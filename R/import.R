

library("sf")
library("btl.data")
library("mapview")

states <- btl.data::us_states
filter_states <- states[states$name == "Tennessee" |
                        states$name =="North Carolina", ]


MVUM_raw <- sf::st_read("data_raw/Motor_Vehicle_Use_Map%3A_Roads_(Feature_Layer).shp")


nc_tn <- MVUM_raw[filter_states, ]

t <- st_drop_geometry(nc_tn)

names(t[,9:50])



apply(t[, 9:50], 2, unique)


summary(nc_tn, zcol = "SYMBOL")

mapview(nc_tn, zcol = c("SYMBOL"))

t <- st_drop_geometry(nc_tn)

Uwha <- t[which(t$DISTRICTNA == "Uwharrie Ranger District"), ]

View(Uwha)


# Surfacetyp 