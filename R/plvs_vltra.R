#' plvs_vltra
#'
#' This is a function to select a pre-made palette.
#' @param palette_name  The palette to be selected.
#' @param show Set to TRUE to plot the pallete using "scales".
#' @return A vector of hex codes.
#' @export

plvs_vltra = function(palette_name, show=FALSE){
   
   if(show==TRUE){
    display_plvs_vltra(palette_name)
    }

    return(plvs_vltra_palettes(palette_name=palette_name, list_all = FALSE))
}



