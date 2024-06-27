#' display_plvs_vltra
#'
#' This is a function to display a pre-made palette.
#' @param palette_name  The palette to be selected.
#' @return A plot object.
#' @export

display_plvs_vltra = function(palette_name){

  namelist = plvs_vltra_palettes("all", list_all=TRUE)

     if(!(palette_name %in% namelist)){
         stop(paste(palette_name, "is not a valid palette name."))
     }

    pal = plvs_vltra_palettes(palette_name=palette_name, list_all=FALSE)
    n = length(pal)

    image(1:n, 1, as.matrix(1:n), col = pal, 
        xlab = palette_name, ylab = "", xaxt = "n", yaxt = "n", 
        bty = "n")
}



