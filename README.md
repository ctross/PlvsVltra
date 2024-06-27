PlvsVltra
========
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
plvs_vltra_palettes("dust_storm", show=FALSE)
```

Demonstration: Linear palettes in the South of France.
------
A choropleth map displays divided geographical areas or regions that are coloured in relation to a numeric variable. I use an example from [r-graph-gallery](https://r-graph-gallery.com/choropleth-map.html) to show the sequential or linear palettes.
> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/map_honey_pot.png?raw=true" alt="logo" width="400">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/map_robin_feathers.png?raw=true" alt="logo" width="400"> 

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/map_summer_clouds.png?raw=true" alt="logo" width="400">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/map_mint_tea.png?raw=true" alt="logo" width="400">  


Linear palettes:
------
The linear palettes are:
> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/honey_pot.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/robin_feathers.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/summer_clouds.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/mint_tea.png?raw=true" alt="logo" width="750">  

Diverging palettes:
------
> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/skinny_dipping.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/forest_fire.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/sunken_treasure.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/desert_skies.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/ocean_sunset.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/coastal_marsh.png?raw=true" alt="logo" width="750">  

Categorical palettes:
------
> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/mystic_mausoleum.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/dust_storm.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/golden_riches.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/shattered_mosaics.png?raw=true" alt="logo" width="750">  

> <img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/inst/dusk_oasis.png?raw=true" alt="logo" width="750">  


