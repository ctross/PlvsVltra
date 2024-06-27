PlvsVltra
========

 ![dust_storm](https://github.com/ctross/PlvsVltra/blob/main/inst/dust_storm_inspiration.jpg?raw=true)
 
Beautiful scientific data visualization, using color palettes from Spanish and Moroccan tiles
------
<img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/logo.png?raw=true" alt="logo" width="150">

**PlvsVltra** is an R package designed to facilitate the creation of color palettes from jpg or png images using the create_palette() function. The function plvs_vltra() contains several pre-defined palettes, based on the color distributions in Spanish and Moroccan tiles. In this tutorial, we teach users how to create palettes from image files, and how to push new palettes into the package, so that they will be availible for later use.   


 
Installation
------
The package is not on CRAN, so install from GitHub directly:
```{r}
library(devtools)
 install_github('ctross/PlvsVltra')
```

Accessing pre-defined palettes:
------
```{r}
################################### Install and/or load
library(PlvsVltra)
plvs_vltra("dust_storm", rev=FALSE, elements=NULL, show=FALSE)
```
The argument "rev" will reverse the palette order from the images shown below. The argument "elements" gives the subset of colors to pull: e.g., elements=c(1,7), will pull only the first and last elements from a 7-color palette.


Creating your own palettes:
------
You can create your own palettes by running the following:
```{r}
################################### Install and/or load
library(PlvsVltra)
create_palette(path, n_colors=7)
```
where "path" is the location of the image you want to mine for a color palette, and n_colors is the breadth of the color palette. See the tutorial workflow at the end of this readme, to learn about how to use the point-and-click interface.

Demonstration: Linear palettes in the South of France.
------
A choropleth map displays divided geographical areas or regions that are coloured in relation to a numeric variable. I use an example from [r-graph-gallery](https://r-graph-gallery.com/choropleth-map.html) to show the sequential/linear palettes.

![honey_pot](https://github.com/ctross/PlvsVltra/blob/main/inst/map_honey_pot.png?raw=true)

![robin_feathers](https://github.com/ctross/PlvsVltra/blob/main/inst/map_robin_feathers.png?raw=true)

![summer_clouds](https://github.com/ctross/PlvsVltra/blob/main/inst/map_summer_clouds.png?raw=true)

![mint_tea](https://github.com/ctross/PlvsVltra/blob/main/inst/map_mint_tea.png?raw=true)


Linear palettes:
------

![honey_pot](https://github.com/ctross/PlvsVltra/blob/main/inst/honey_pot.png?raw=true)

![robin_feathers](https://github.com/ctross/PlvsVltra/blob/main/inst/robin_feathers.png?raw=true)

![summer_clouds](https://github.com/ctross/PlvsVltra/blob/main/inst/summer_clouds.png?raw=true)

![mint_tea](https://github.com/ctross/PlvsVltra/blob/main/inst/mint_tea.png?raw=true)


Diverging palettes:
------


![sunken_treasure](https://github.com/ctross/PlvsVltra/blob/main/inst/sunken_treasure.png?raw=true)

![skinny_dipping](https://github.com/ctross/PlvsVltra/blob/main/inst/skinny_dipping.png?raw=true)

![forest_fire](https://github.com/ctross/PlvsVltra/blob/main/inst/forest_fire.png?raw=true)

![desert_skies](https://github.com/ctross/PlvsVltra/blob/main/inst/desert_skies.png?raw=true)

![ocean_sunset](https://github.com/ctross/PlvsVltra/blob/main/inst/ocean_sunset.png?raw=true)

![coastal_marsh](https://github.com/ctross/PlvsVltra/blob/main/inst/coastal_marsh.png?raw=true)


 

Categorical palettes:
------


![dust_storm](https://github.com/ctross/PlvsVltra/blob/main/inst/dust_storm.png?raw=true)

![dusk_oasis](https://github.com/ctross/PlvsVltra/blob/main/inst/dusk_oasis.png?raw=true)

![golden_riches](https://github.com/ctross/PlvsVltra/blob/main/inst/golden_riches.png?raw=true)

![mystic_mausoleum](https://github.com/ctross/PlvsVltra/blob/main/inst/mystic_mausoleum.png?raw=true)

![shattered_mosaics](https://github.com/ctross/PlvsVltra/blob/main/inst/shattered_mosaics.png?raw=true)


Creating a palette from an image with a point-and click interface.
------
When the user runs: create_palette(path, n_colors=7), an interactive window will open inside of R, and there will be "n_colors" grey boxes below the selected image. The draft palette will be visualized here. With each click, a new color will be added to the palette. Once the user has selected n_colors, future clicks will no longer change the palette. From here two options are possible: 1) If the user is satisfied with the palette, they will click the black box to save the stored palette, or 2) If the user wants to redo any colors in the palette, they must first click the color box that they wish to change, and then re-select a color in the source image. This procees can be repeated, until the user is satisfied, and clicks the black box to end.

![load](https://github.com/ctross/PlvsVltra/blob/main/inst/load.jpg?raw=true) ![save](https://github.com/ctross/PlvsVltra/blob/main/inst/save.jpg?raw=true)


