# A Week-end of off roading in North Carolina

After exploring the [MVUM dataset](https://catalog.data.gov/dataset/motor-vehicle-use-map-roads-feature-layer-7d219) the border between North Carolina and Tennessee looked promising. Unfortunately, many trails appeared to be missing. OpenStreetMap was also not really helpful and it was unclear if the key `ATv` with value `yes` or `permit` was consistent. 

In the end, I decided to focus on Brown Mountain, even though the available data seemed a bit outdated.

I used R to process the data and documented the workflow in `R/import`. With QGIS, I georeferenced the missing trails (using the georeferencer tool with UTM zone 17). The processed data was then exported to the``data/` folder.

For publishing, I relied on GitHub and used GitHub Pages to serve the content from the doc/ folder.

With more time, I’d like to expand this into a scrollytelling project that highlights each type of vehicle.

## Dependencies

- quarto (`quarto render` to doc/)
- R (4.5) with package sf, leaflet and htmltools

## Sources: 

NC forest service list of trails: 
https://www.fs.usda.gov/r08/northcarolina/recreation/opportunities/highway-vehicles-ohv

MVUM: https://catalog.data.gov/dataset/motor-vehicle-use-map-roads-feature-layer-7d219

## Documents

Brown mountain OHV system: https://www.fs.usda.gov/r08/northcarolina/recreation/brown-mountain-ohv-trail-system



