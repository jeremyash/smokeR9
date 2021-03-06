#############################################################################
## FOLLOW NUMBERED STEPS BELOW TO CREATE THE SMOKE OUTLOOK
#############################################################################

##-------------
## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT
##-------------

source("code/render_smoke_report_functions.R")



##-------------
## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES
##-------------

# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "YYYY_forest_burnname"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_before"

# burn lat/long
burn_lat <- 38.7860
burn_lon <- -79.6520



##-------------
## 3. CREATE DIRECTORY TO STORE FILES
##-------------

# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)



##-------------
## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE
##-------------

fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn



##-------------
## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER
##-------------

# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 



##-------------
## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER
##-------------

# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)



##-------------
## 7. CREATE SMOKE OUTLOOK
##-------------

# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Test", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "January 31, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "...https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 50, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = TRUE # include low PM level in daily max (TRUE or FALSE)
                       ))


##-------------
## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED
##-------------

# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 


##-------------
## 8. CLEAR ENVIRONMENT
##-------------

# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())


#----------------------------------------------------------------------------
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------





