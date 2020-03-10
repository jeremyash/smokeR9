
## Lee Mine Unit 1 ##################################################



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_lee_mine_unit_1"

# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.57245
burn_lon <- -88.29588




#
## 3. CREATE DIRECTORY TO STORE FILES
#

# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # update with directory created above
                      burn_name = "Lee Mine Unit 1", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "February 29, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-1.airfire.org/bluesky-web-output/15e597c409a8df-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 75, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
                       ))


## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## Whoppie Cat ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_whoopie_cat"

# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.48288
burn_lon <- -88.3215




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # update with directory created above
                      burn_name = "Whoopie Cat", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "February 29, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-2.airfire.org/bluesky-web-output/15e597cd271044-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 75, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
                       ))


## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## Pine Hills North ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_pine_hills_north"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.5664
burn_lon <- -89.43805




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Pine Hills North", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 5, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-1.airfire.org/bluesky-web-output/15e60f4f4ea457-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 75, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())








## White Tract ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_white_tract"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.8206
burn_lon <- -89.4676




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "White Tract", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 5, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-2.airfire.org/bluesky-web-output/15e60f56c9e771-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 75, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## Cave Hill ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_cave_hill"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.6825
burn_lon <- -88.4176




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Cave Hill", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 7, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-2.airfire.org/bluesky-web-output/15e623788a14bd-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/15e6162e06d062-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## McConnel ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_mcconnel"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.5010
burn_lon <- -88.6840




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "McConnel", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 6, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-1.airfire.org/bluesky-web-output/15e6237d335dd8-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/15e6162e06d062-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## Lewis ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_lewis"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.2131
burn_lon <- -88.4878




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Lewis", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 6, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-2.airfire.org/bluesky-web-output/15e616e6891e7e-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/15e6162e06d062-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## Whoopie Cat 2####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_whoopie_cat2"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.48288
burn_lon <- -88.3215




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Whoopie Cat", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 7, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-2.airfire.org/bluesky-web-output/15e62af511079b-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## Wolf Creek ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_wolf_creek"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_before"

# burn lat/long
burn_lat <- 37.2048
burn_lon <- -89.54938




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Wolf Creek", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 7, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-2.airfire.org/bluesky-web-output/15e62afb048583-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                     drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
                       ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## State of Illinois ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_state_of_il"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_before"

# burn lat/long
burn_lat <- 37.86515
burn_lon <- -89.54938




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "State of Illinois West", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 7, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-1.airfire.org/bluesky-web-output/15e62cebcf32d8-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
                       ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







##  Cave Hill 2 ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_cave_hill2"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.6825
burn_lon <- -88.4176




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Cave Hill", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 7, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-1.airfire.org/bluesky-web-output/15e6392762775e-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/15e6162e06d062-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())








## Blowdown ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_blowdown"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.7745
burn_lon <- -89.4758




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Blowdown", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 8, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-2.airfire.org/bluesky-web-output/15e64e0125d908-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
                       ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())







## Wolf Creek ####



## 1. SOURCE R CODE WITH FUNCTIONS TO GENERATE DIRECTORY, FIREPOKER LINK AND SMOKE REPORT


source("code/render_smoke_report_functions.R")




## 2. LIST NAME OF FOLDER WHERE BURN INFO WILL BE STORED, WHICH MODEL RUN THIS IS AND BURN COORDINATES


# create directory of burn files in format "YYYY_forest_burnname"
burn_dir <- "2020_shawnee_wolf_creek"


# model run: # needs to be "day_before" or "day_of" 
model_run <- "day_of"

# burn lat/long
burn_lat <- 37.2048
burn_lon <- -89.3501




## 3. CREATE DIRECTORY TO STORE FILES


# create directory for burn located in smokeR9/outlooks/burn_dir
create_md_dir(burn_dir)




## 4. CREATE FIREPOKER LINK TO DOWNLOAD PNG OF WEBPAGE


fp_url(LAT = burn_lat,
       LON = burn_lon) # coordinates of planned burn




## 5. DOWNLOAD SCREEN CAPTURE OF FIREPOKER


# Use Full Page Screen Capture in Chrome to capture met data and download to PNG file. Should download directly to Downloads folder. Make sure Chrome is open on your laptop (not an external display) and the zoom level is set to 100% (use Ctrl +/- to zoom in and out). Move directly to step 6, as it will look for most recently downloaded file. 




## 6. MOVE FIREPOKER IMAGE TO CORRECT FOLDER


# function will move most recently downloaded file (assuming this is the firepoker img) to burn_dir/model_run and rename it to firepoker.PNG
fp_png_to_burn_dir_fun(burn_dir, model_run)




## 7. CREATE SMOKE OUTLOOK


# render smoke template for given burn
suppressWarnings( 
  render_smoke_report(outlook_path = burn_dir, # uses directory created above to store files
                      burn_name = "Wolf Creek", # name of fire
                      contact_info = "Jeremy Ash, jeremy.ash@usda.gov, 608-234-3300", # full contact info or website
                      burn_date = "March 8, 2020", # planned date
                      lat = burn_lat, # latitude of planned ignition
                      lon = burn_lon, # longitude of planned ignition
                      model_run = model_run, # created above (day_before or day_of)
                      run_id_url = "https://playground-1.airfire.org/bluesky-web-output/15e62afb048583-dispersion/", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
                      mon_radius = 100, # radius in km around the burn to pull AQI monitors. start with 50 and increase if needed 
                      drop_low_avg = FALSE, # include low PM level in daily avg (TRUE or FALSE)
                      drop_low_max = FALSE # include low PM level in daily max (TRUE or FALSE)
  ))



## OPTIONAL. CREATE PUBLIC SMOKE OUTLOOK IMAGE, IF WANTED


# generate public smoke outlook
public_img_fun(YYYY_FOREST_BURN = burn_dir, # uses directory created above to store files
               MODEL_RUN = model_run, # created above (day_before or day_of)
               RUN_ID_URL = "https://playground-2.airfire.org/bluesky-web-output/...", # on BSky Dispersion Results webpage, click on 'Results Output' and copy full URL
               LAT_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lat): increase/decrease depending on size of smoke trajectory
               LON_BUFFER = 0.2, # how far to buffer image around fire coordinates (in deg Lon): increase/decrease depending on size of smoke trajectory
               DROP_LOW_AVG = TRUE) # include low PM level in daily avg (TRUE or FALSE) 



## 8. CLEAR ENVIRONMENT


# make sure to clear environment before running for another burn, as shared variables will need to be re-written
rm(list = ls())









