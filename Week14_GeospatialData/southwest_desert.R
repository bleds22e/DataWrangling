# Create map of North American SW deserts
# Ellen Bledsoe
# ebledsoe@arizona.edu
# 2025-04-29

# PACKAGES and DATA #
library(terra)

temp <- rast("Week14_GeospatialData/data/global-temperature.tif")
prec <- rast("Week14_GeospatialData/data/global-precipitation.tif")

# Explore Raster Data #

temp #SpatRaster
# min values and max values are temperatures in Celcius

plot(temp)

## Crop to SW location (lat, long)
# Lower right: 21, -98
# Upper left: 46, -126

# west, east, south, north
southwest_ext <- ext(c(-126, -98, 21, 46))
southwest_ext

# crop temps for SW extent
temp_sw <- crop(temp, southwest_ext)
temp_sw
plot(temp_sw)

# Convert from Celcius to Fahrenheit
temp_sw_f <- (temp_sw * (9/5) + 32)
plot(temp_sw_f)

# Re-project in Conus Albers
temp_sw_reproject <- project(temp_sw, "epsg:5070")
plot(temp_sw_reproject)

# new colors!
plot(temp_sw_f, col = rainbow(n = 50))

# colors from ColorBrewer
# use hcl.colors()
plot(temp_sw_f, col = hcl.colors(n = 50, palette = "YlOrBr", rev = TRUE))
