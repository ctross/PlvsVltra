#' plvs_vltra_palettes
#'
#' This is a function to select a pre-made palette.
#' @param palette_name  The palette to be selected.
#' @param show Set to TRUE to plot the pallete using "scales".
#' @return A vector of hex codes.
#' @export

plvs_vltra_palettes = function(palette_name, show=FALSE){
  included_palettes = NULL

  # ocean_sunset 
  included_palettes$ocean_sunset = c("#052458", "#3E8DBB", "#5E1B09", "#B56033", "#EF731E", "#EFA46C", "#F4DDCA")

  # dust_storm 
  included_palettes$dust_storm = c("#A8413A", "#53726A", "#556879", "#C88944", "#B55B29", "#494136", "#EED59D")


 # Return a palette
   selected_palette = included_palettes[[which(names(included_palettes) == palette_name)]]

   if(show==TRUE){
    scales::show_col(selected_palette)
   }
   return(selected_palette)
}



