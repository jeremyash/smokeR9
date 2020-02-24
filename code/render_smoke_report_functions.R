## SPATIAL
library(sp)
library(rgeos)
library(raster)
library(rgdal)
library(maptools)
library(ggmap)
library(sf)
library(png)
library(magick)

## DATA MANAGEMENT
library(tidyverse)
library(skimr)
library(readxl)
# library(zoo)
library(curl)
library(RCurl)
library(rjson)
library(here)

## PLOTTING
library(scales)
library(units)
library(viridis)
library(extrafont)
library(gtable)
library(grid)
library(ggimage)
library(gridExtra)
library(knitr)
library(kableExtra)
library(egg)
library(tidycensus)
library(ggrepel)
library(leaflet)
library(htmlwidgets)


## SMOKE DATA
library(PWFSLSmoke)
library(MazamaSpatialUtils)
#----------------------------------------------------------------------------



#############################################################################
## FUNCTIONS TO RENDER SMOKE REPORT
#############################################################################

##-------------
## create standard directory for new project
##-------------

create_md_dir <- function(YYYY_FOREST_BURN) {
  
  # primary directory
  proj <- paste("outlooks/", YYYY_FOREST_BURN, sep = "")
  
  # sub-directories
  # sub_dir <- paste(proj, c("day_before",
  #                          "day_of",
  #                          "day_before/smoke_dispersion_files",
  #                          "day_of/smoke_dispersion_files"),
  #                  sep = "/")
  
  sub_dir <- paste(proj, c("day_before",
                           "day_of"),
                   sep = "/")
  
    # create the project directories
  lapply(c(proj, sub_dir), function(x) {dir.create(x)})
  
  # message about creation
  message(paste(basename(proj), "has been created"))
}





##-------------
## create firepoker link
##-------------


fp_url <- function(LAT, LON) {
  
  # fire location
  fire_loc <- tibble(lon = LON, 
                     lat = LAT)
  
  # specify coordinates
  coordinates(fire_loc) <- c("lon", "lat")
  proj4string(fire_loc) <- CRS("+init=epsg:4326")
  
  # transform to bbox CRS
  fire_loc_3857 <- spTransform(fire_loc, CRS("+init=epsg:3857"))@coords
  
  # bbox data: xmin, ymin, xmax, ymax
  # bbox_ctds <- c(fire_loc_3857[1] + -1016307,
  #                fire_loc_3857[2] - 489197,
  #                fire_loc_3857[1] - -1016307,
  #                fire_loc_3857[2] + 489197)
  
  
  
  # read in dispersion breakpoints and id the state where fire is happening
  disp_brkpts_df <- read_excel("raw_data/disp_breakpoints.xlsx")
  states <- st_read("gis/states")
  fire_info_sf <- st_as_sfc(fire_loc)
  state_sf <- st_transform(states, crs = st_crs(fire_info_sf))
  fire_state <- as.character(states$STATE_ABBR[st_intersects(fire_info_sf, state_sf)[[1]]])
  
  
  disp_brkpts <- disp_brkpts_df %>% 
    filter(state == fire_state) 
  
  
  # create firepoker link
  fp_url <- paste("https://www.weather.gov/dlh/firepoker?lat=",
                  round(fire_loc$lat, 3),
                  "&lon=",
                  round(fire_loc$lon, 3),
                  "&clat=38.967&clon=-97.267&zoom=7.000&bbox=[-16540299.098,2518065.675,-5115162.882,6915872.719]&layers=USStates|ForecastDot|Domain|SurfaceFronts|Radar|&fwf=F&dispersion=",
                  paste(0, 
                        disp_brkpts[2], 
                        disp_brkpts[3],
                        disp_brkpts[4],
                        disp_brkpts[5],
                        sep = ","),
                  "&ndfd=WindGust&nohelp=t#",
                  sep = "")
  
  # print(fp_url)
  browseURL(fp_url, browser = "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe",
            encodeIfNeeded = FALSE)
}


##-------------
## function to move firepoker image from downloads to project folder
##-------------
fp_png_to_burn_dir_fun <- function(BURN_DIR, MODEL_RUN) {
  
  # extract  top level directory info
  user_dir <- here()
  
  # create downoad directory path 
  download_dir <- paste(str_split(user_dir, "/")[[1]][1],
                        str_split(user_dir, "/")[[1]][2],
                        str_split(user_dir, "/")[[1]][3],
                        "Downloads",
                        sep = "/")
  
  # find most recently downloaded file, assuming this is the Firepoker PNG
  download_files <- file.info(list.files(download_dir, full.names = TRUE))
  rec_file <- rownames(download_files)[which.max(download_files$mtime)]
   
  # move and rename to appropriate directory
  file.rename(rec_file, 
              paste(user_dir, 
                    "/outlooks/",
                    BURN_DIR,
                    "/",
                    MODEL_RUN,
                    "/firepoker.PNG", sep = ""))
}


##-------------
## function to create smoke report
##-------------

 
render_smoke_report <- function(outlook_path, burn_name, contact_info, burn_date, lat, lon, model_run, run_id_url, mon_radius, drop_low_avg, drop_low_max){
  # libraries needed
  require(rmarkdown)
  require(tidyverse)
  require(lubridate)
  
  # intermediate file names
  smoke_report_title <- str_replace_all(paste(burn_name, model_run), " ", "_")
  yearmonday <- str_replace_all(Sys.Date(), "-", "")
  
  
  # create html output
  render(input = "code/smoke_template_drop_level.Rmd",
         output_dir = paste("outlooks/", outlook_path, "/", model_run, sep = ""),
         output_file = paste(yearmonday,
                             "_",
                             smoke_report_title, ".html", sep = ""), 
         params = list(BURN_NAME = burn_name,
                       CONTACT_INFO = contact_info,
                       BURN_DATE = burn_date,
                       LAT = lat,
                       LON = lon,
                       MODEL_RUN = model_run,
                       RUN_ID_URL = run_id_url,
                       OUTLOOK_PATH = outlook_path,
                       MON_RADIUS = mon_radius,
                       DROP_LOW_AVG = drop_low_avg,
                       DROP_LOW_MAX = drop_low_max)) 
}

#############################################################################
## CODE TO GENERATE PUBLIC OUTLOOK IMAGE
#############################################################################

public_img_fun <- function(YYYY_FOREST_BURN, MODEL_RUN, RUN_ID_URL, LAT_BUFFER, LON_BUFFER, DROP_LOW_AVG) {


  ##-------------
  ## download and extract files
  ##-------------

  
  # bluesky PM color codes and binds
  bsky_col <- read_csv("raw_data/bsky_gray_color_ramp.csv",
                       trim_ws = TRUE) 
  
  
  
  # smoke md directory
  outlook_smoke <- paste("outlooks/",
                    YYYY_FOREST_BURN,
                    "/",
                    MODEL_RUN,
                    sep = "")
  
  
  # smoke dispersion
  smoke_disp_link <- paste(RUN_ID_URL,
                           "/output/smoke_dispersion.kmz", sep = "")
  
  # download smoke dispersion into a zip and regular version 
  curl_download(smoke_disp_link, destfile = paste(outlook_smoke,
                                                  "/smoke_dispersion.kmz.zip",
                                                  sep = ""))
  
  # create the directory to store files
  dir.create(paste(outlook_smoke,
                   "/smoke_dispersion_files", sep = ""))
  
  # unzip the file
  unzip(zipfile = paste(outlook_smoke,
                        "/smoke_dispersion.kmz.zip",
                        sep = ""),
        exdir = paste(outlook_smoke,
                      "/smoke_dispersion_files", sep = ""))
  
  # get rid of zip file
  file.remove(paste(outlook_smoke,
                    "/smoke_dispersion.kmz.zip",
                    sep = ""))
  
  # grid info to get extent of png files
  grid_info_link <- paste(RUN_ID_URL, 
                          "/output/grid_info.json", sep = "")
  
  # download grid info
  curl_download(grid_info_link, destfile = paste(outlook_smoke, 
                                                 "/smoke_dispersion_files/grid_info.json", sep = ""))
  
  
  # burn location info and UTC offset
  burn_loc_link <- paste(RUN_ID_URL, 
                         "/output/data/fire_locations.csv", sep = "")
  
  # download burn locations
  curl_download(burn_loc_link, destfile = paste(outlook_smoke,
                                                "/smoke_dispersion_files/burn_locations.csv", sep = ""))
  
  
  
  ##-------------
  ## re-code rasters
  ##-------------
  
  # burn ctds
  burn_loc <- read_csv(paste(outlook_smoke,
                             "/smoke_dispersion_files/burn_locations.csv", sep = ""))
  
  # burn CRS
  burn_crs <- st_crs(read_sf(paste(outlook_smoke,
                                   "/smoke_dispersion_files/doc.kml", sep = "")))
  
  # read PNG files
  day_one_avg <- readPNG(paste(outlook_smoke, 
                               "/smoke_dispersion_files/100m_daily_average_", 
                               burn_loc$date_time, 
                               "_UTC",
                               gsub(":", "", burn_loc$utc_offset),
                               ".png", sep = ""))
  
  
  # pull extent from grid_info.json
  grid_info <- fromJSON(file=paste(outlook_smoke,
                                   "/smoke_dispersion_files/grid_info.json", sep = ""))[[1]]
  
  
  # # read in burn icon for mapping
  # burn_icon <- tibble(x = burn_loc$longitude,
  #                     y = burn_loc$latitude,
  #                     image = "../icons/redFlame.png")
  
  
  # collapse RGB bands into one with hex codes as values
  day_one_avg_r <- as.raster(day_one_avg)
  
  # replace hex codes with PM categories, including an option whether to code the lowest category as NA
  day_one_avg_r[day_one_avg_r == "#C8C8C8B2"] <- ifelse(DROP_LOW_AVG == TRUE, 
                                                        bsky_col$aqi[bsky_col$hex == "#00000000"],
                                                        bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"])  #1
  day_one_avg_r[day_one_avg_r == "#AFAFAFB2"] <- bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"] #2
  day_one_avg_r[day_one_avg_r == "#969696B2"] <- bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"] #3
  day_one_avg_r[day_one_avg_r == "#7D7D7DB2"] <- bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"] #4
  day_one_avg_r[day_one_avg_r == "#646464B2"] <- bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"] #5
  day_one_avg_r[day_one_avg_r == "#4B4B4BB2"] <- bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"] #6
  day_one_avg_r[day_one_avg_r == "#323232B2"] <- bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"] #6
  day_one_avg_r[day_one_avg_r == "#191919B2"] <- bsky_col$aqi[bsky_col$hex == "#C8C8C8B2"] #6
  day_one_avg_r[day_one_avg_r == "#00000000"] <- bsky_col$aqi[bsky_col$hex == "#00000000"] #0
  
  
  # convert to matrix and change values to numeric
  day_one_avg_m <- matrix(as.numeric(day_one_avg_r),
                          nrow = dim(day_one_avg_r)[1],
                          ncol = dim(day_one_avg_r)[2],
                          byrow = TRUE)
  
  # convert to raster
  day_one_avg_ras <- raster(day_one_avg_m)
  
  
  # ratify raster (convert to factor)
  # day_one_avg_ras <- ratify(day_one_avg_ras)
  # 
  # 
  # # data frame of levels for day one avg including/excluding lowest level
  # avg_levels_w_low <- list(data.frame(ID = c("1", "2", "3", "4", "5", "6"),
  #                                     pm = c("1-12", "12-35", "35-55", "55-150", "150-250", ">250")))
  # 
  # avg_levels_wo_low <- list(data.frame(ID = c("2", "3", "4", "5", "6"),
  #                                      pm = c("12-35", "35-55", "55-150", "150-250", ">250")))
  # 
  # # add levels of factor in dataframe
  # levels(day_one_avg_ras) <- ifelse(DROP_LOW_AVG == TRUE, 
  #                                   avg_levels_wo_low,
  #                                   avg_levels_w_low)
  # 
  
  # set extent of raster
  extent(day_one_avg_ras) <- extent(c(grid_info[1], 
                                      grid_info[3],
                                      grid_info[2],
                                      grid_info[4]))
  
  # same crs as the doc.kml
  crs(day_one_avg_ras) <- burn_crs[["proj4string"]]
  
  
  # combine with burn info into a list 
  smoke_ls <- list(burn_loc, day_one_avg_ras)
  names(smoke_ls) <- c("burn_loc",
                       "day_one_avg_ras")
 


  # set up google API for ggmap 
  api <- readLines("gis/google.api")
  register_google(key = api)
  
  # burn loc
  burn_loc <- smoke_ls[["burn_loc"]]
  
  
  # read in burn icon for mapping
  burn_icon <- tibble(x = burn_loc$longitude,
                      y = burn_loc$latitude,
                      image = "icons/redFlame.png")
  
  
  # pull burn map from google
  burn_map_info <- get_map(location = c(burn_icon$x, burn_icon$y),
                           maptype = "roadmap",
                           source = "google",
                           zoom = 11)
  
  
  # convert to df object for plotting 
  avg_df <- as.data.frame(smoke_ls[["day_one_avg_ras"]], xy = TRUE) %>% 
    filter(!(is.na(layer)))
  
  # plot smoke map
  
  
  # windows(8,8)
  
  burn_img <- ggmap(burn_map_info, extent = "device") +
    
    # smoke trajectory
    geom_tile(aes(x = x, y = y, fill = layer), 
              alpha = 0.7,
              fill = "grey80",
              data = avg_df) +
    
    # fire icon
    geom_image(aes(x = x, y = y, image = image), 
               size = 0.03,
               data = burn_icon) +
    
    scale_y_continuous(limits = c(burn_icon$y - LAT_BUFFER,
                                  burn_icon$y + LAT_BUFFER)) +
    scale_x_continuous(limits = c(burn_icon$x - LON_BUFFER,
                                  burn_icon$x + LON_BUFFER)) +
    theme_minimal() +
    theme(axis.text = element_blank(),
          axis.title = element_blank(),
          panel.grid = element_blank()
    ) +
    annotate("text", 
             x = burn_icon$x + 0.095, 
             y = burn_icon$y - 0.177, 
             label = "'Source:'~BlueSky~Playground~'3.0,'~Modeled~PM[2.5]~Concentrations~'>12'~mu*'g/'*m^{-3}",
             parse = TRUE,
             size = 2.5) + 
    annotate("text",
             x = burn_icon$x, 
             y = burn_icon$y + 0.19, 
             label = "The map shows the best estimate of the location\n of smoke that could be seen or otherwise easily noticed.",
             size = 6)
  
  ggsave(filename = paste(outlook_smoke, 
                          "/",
                          YYYY_FOREST_BURN,
                          "_",
                          MODEL_RUN, 
                          "_public.jpg",
                          sep = ""),
         plot = burn_img,
         height = 8,
         width = 8)

  # remove smoke dispersion files from directory
  unlink(paste(outlook_smoke,
               "/smoke_dispersion_files", sep = ""), 
         recursive = TRUE)
  
}















































