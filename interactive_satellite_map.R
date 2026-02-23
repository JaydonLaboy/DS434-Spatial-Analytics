install.packages(c("sf", "leaflet"))

# Load packages
library(sf)
library(leaflet)

# Read geojson file
oahu_solar <- st_read("oahu_solar_260tracts.geojson")

# Fix projection for web map
oahu_solar <- st_transform(oahu_solar, 4326)

# Interactive satellite map
leaflet(oahu_solar) %>%
  addProviderTiles(providers$Esri.WorldImagery) %>%   # Satellite basemap
  addPolygons(
    fillColor = "yellow",
    color = "red",
    weight = 1,
    fillOpacity = 0.5
  )


