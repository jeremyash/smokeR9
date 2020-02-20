# list of necessary packages
smokeR9_packages <- c(
  "sp",
  "rgeos",
  "raster",
  "rgdal",
  "maptools",
  "ggmap",
  "sf",
  "png",
  "magick",
  "tidyverse",
  "skimr",
  "readxl",
  "curl",
  "RCurl",
  "rjson",
  "here",
  "scales",
  "units",
  "viridis",
  "extrafont",
  "gtable",
  "grid",
  "ggimage",
  "gridExtra",
  "knitr",
  "kableExtra",
  "egg",
  "tidycensus",
  "ggrepel",
  "leaflet",
  "htmlwidgets",
  "PWFSLSmoke",
  "MazamaSpatialUtils")


# compare against install packages
new_packages <- smokeR9_packages[!(smokeR9_packages %in% installed.packages()[,"Package"])]


# install needed packages
if(length(new_packages)) install.packages(new_packages)




