# Mapping ARM SGP flux sites using RgoogleMaps
# ARM data from www.arm.gov/sites/sgp/geoinfo
# Author: Meredith Franklin
# Date: 01/08/2015

library(RgoogleMaps)
library(RColorBrewer)

# Central facility EF13 EBBR 36.605N, 97.485W (pasture and wheat)
# Central facility EF14 ECOR 36.607N, 97.488W (pasture and wheat)

# Mapping via RgoogleMaps
# Find map center and get map
center <- rev(sapply(rawdata, mean))
map <- GetMap(center=center, zoom=11)
# Translate original data
coords <- LatLon2XY.centered(map, rawdata$lat, rawdata$lon, 11)
coords <- data.frame(coords)