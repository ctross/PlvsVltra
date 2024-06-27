#' plvs_vltra
#'
#' This is a function to select a pre-made palette.
#' @param palette_name  The palette to be selected.
#' @param rev  Should the palette be reversed?
#' @param elements  Which elements to pull? Defaults to the full palette.
#' @param show Set to TRUE to plot the pallete using "scales".
#' @return A vector of hex codes.
#' @export

plvs_vltra = function(palette_name, rev=FALSE, elements=NULL, show=FALSE){
   
   if(show==TRUE){
    display_plvs_vltra(palette_name)
    }
    
    pals = plvs_vltra_palettes(palette_name=palette_name, list_all = FALSE)

    if(rev==TRUE){
    pals = rev(pals)  
    }
    
    if(!is.null(elements)){
    e_max = max(elements)
    e_min = min(elements)

    n_pal = length(pals)

    if(e_min < 1 | e_max > n_pal){
      stop("Selected elements are not consistent with palette size. Please try again.")
    }
    pals = pals[elements]
    }

    return(pals)
}



