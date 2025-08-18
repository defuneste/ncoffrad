

library("sf")
# personal package, can be replaced by gdal see: https://codeberg.org/defuneste/btl.data/src/branch/main/data-raw/us_states.R  
library("btl.data")
# library("mapview")

MVUM_raw <- sf::st_read("data_raw/Motor_Vehicle_Use_Map%3A_Roads_(Feature_Layer).shp")

states <- btl.data::us_states
filter_states <- states[states$name == "North Carolina", ]
nc <- MVUM_raw[filter_states, ]
# mapview(nc, zcol = c("SYMBOL"))

# extract just brown moutain and keep NAME columns
brown_moutain <- nc[nc$NAME == "BROWN MOUNTAIN", "NAME"] |>
                    sf::st_union() |>
                    sf::st_as_sf()



sprintf("%s trails are present in Brown Mountain.", nrow(brown_moutain))

system("mkdir -p data")

message("save to data/")
# save to edit in QGIS
sf::st_write(brown_moutain, "data/brown_mountain.gpkg")
