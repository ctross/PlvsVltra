PlvsVltra
========
Beautiful scientific data visualization, using color palettes from Spanish and Moroccan tiles
------
<img align="right" src="https://github.com/ctross/PlvsVltra/blob/main/logo.png" alt="logo" width="150">

**DieTryin** is an R package designed to facilitate the collection of roster-based network data, and to run network-structured economic games—such as [Recipient Identity-Conditioned Heuristics (RICH) games](http://journals.sagepub.com/doi/abs/10.1177/1525822X16643709?journalCode=fmxd). This is a brief overview of a workflow. For further details on any step, see our full publication in [Behavior Research Methods](https://doi.org/10.3758/s13428-021-01606-5).  For a tutorial on automated data entry, see our publication in [Methodological Innovations](https://journals.sagepub.com/doi/10.1177/20597991231160281).  


Data Collection with DieTryinCam
------
To collect data using DieTryinCam, just photograph the roster after tokens have been placed to indicate ties. Then use DieTryin in R to automagically encode the data as color-labeled edge-lists.
![Android Camera API](https://github.com/ctross/DieTryinCam/blob/main/DieTryinCam.png?raw=true)
 
Data Entry with DieTryin
------

Here we will go through the entire DieTryin workflow.  DieTryin works best on Windows. We note that Mac users may have issues using some interactive functions. If this is the case, installing an older version of imager (e.g., 0.41.1) should resolve the issue as long as the user has X11 installed.
```{r}
library(devtools)
install_version("imager", version = "0.41.2", repos = "http://cran.us.r-project.org")
```

Otherwise, we can install by running on R:
```{r}
################################### Install and/or load
 library(devtools)
 #You might need to turn off warning-error-conversion, because the tiniest warning stops installation
 Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS" = "true")
 install_github('ctross/DieTryin')
 library(DieTryin)
```



