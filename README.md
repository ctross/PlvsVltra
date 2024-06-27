PlvsVltra
========
Beautiful scientific data visualization, using color palettes from Spanish and Moroccan tiles
------
<img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/logo.png" alt="logo" width="150">

**PlvsVltra** is an R package designed to facilitate the creation of color palettes from jpg or png images using the create_palette() function. The function plvs_vltra() contains several pre-defined palettes, based on the color distributions in Spanish and Moroccan tiles. In this tutorial, we teach users how to create palettes from image files, and how to push new palettes into the package, so that they will be availible for later use.   
 
Installation
------
The package is not on CRAN, so install from GitHub directly:
```{r}
library(devtools)
 install_github('ctross/PlvsVltra')
```

Accessing pre-defined palettes:
```{r}
################################### Install and/or load
 library(devtools)
plvs_vltra_palettes("dust_storm")
