#' plvs_vltra_palettes
#'
#' This is a function to select a pre-made palette.
#' @param palette_name  The palette to be selected.
#' @param list_all Set to TRUE to return all palette names.
#' @return A vector of hex codes.
#' @export

plvs_vltra_palettes = function(palette_name, list_all=FALSE){
  included_palettes = NULL

  ############################################################################################ Linear palettes
  # robin_feathers
  included_palettes$robin_feathers = c("#7D1313", "#AC050D", "#E33F23", "#EB764B", "#FFE4C4")

  # mint_tea
  included_palettes$mint_tea = c("#365033", "#4F6E44", "#678D76", "#93B09A", "#C9CDA8")

  # summer_clouds
  included_palettes$summer_clouds = c("#021631", "#114C74", "#2793B9", "#7DBFD4", "#B4CED1")

  # honey_pot
  included_palettes$honey_pot = c("#C66C16", "#F18A0A", "#F0AA28", "#FECA74", "#FAE9BE")

  ############################################################################################ Categorical palettes
  # shattered_mosaics
  included_palettes$shattered_mosaics = c("#7D0F06", "#060A3B", "#CE2D05", "#085992", "#D36307", "#0D8FA9", "#F39A0F", "#4E1909", "#0B0708")

  # dust_storm 
  included_palettes$dust_storm = c("#7D3833", "#435964", "#547467", "#B66635", "#C88B3B", "#AB2E34", "#605040")

  # golden_riches
  included_palettes$golden_riches = c("#051A37", "#6F8A9F", "#CF720B", "#F9B129", "#5B1A04", "#CD6420", "#301D00")
  
  # dusk_oasis
  included_palettes$dusk_oasis = c("#364E66", "#8A6D4D", "#5A7D76", "#B79A70", "#E2D2B1", "#5A483E")

  # mystic_mausoleum
  included_palettes$mystic_mausoleum = c("#102B6C", "#8BAFDD", "#B13F0A", "#F5A516", "#16697B", "#6FC6DC", "#77140E", "#AF5249", "#390A05", "#B07B48")

  ############################################################################################ Diverging palettes
  # forest_fire
  included_palettes$forest_fire = c("#2A2F1B", "#33512B", "#577956", "#79A584", "#F2EED1", "#E39C68", "#E46E26", "#CF4D13", "#642A00")

  # coastal_marsh
  included_palettes$coastal_marsh = c("#2A3C26", "#2F532D", "#487E5C", "#B0BCA4", "#ECECC8", "#8CA6A7", "#2F6C81", "#08415F", "#0E2533")

  # ocean_sunset
  included_palettes$ocean_sunset = c("#122536", "#094A68", "#236683", "#6E9DA3", "#EAD7AF", "#FFAE6A", "#FE8824", "#D7450A", "#6B1E04")

  # desert_skies
  included_palettes$desert_skies = c("#12202E", "#17426C", "#319BC3", "#86C4D7", "#E3DFD9", "#F1C177", "#DE9D43", "#DD711D", "#8C4514")

  # sunken_treasure
  included_palettes$sunken_treasure = c("#061937", "#0C3A5E", "#50798B", "#E2E3C3", "#FDD07B", "#FBB82B", "#ED9412")

  # skinny_dipping
  included_palettes$skinny_dipping = c("#091D3E", "#133968", "#6E8F96", "#F0E4CA", "#B8703E", "#9C3E1C", "#652207")

 
 # Return a palette
  if(list_all==FALSE){
   if(!palette_name %in% names(included_palettes)){
    stop("Palette name not found.")
   }

   selected_palette = included_palettes[[which(names(included_palettes) == palette_name)]]
   
    return(selected_palette)
   }

   if(list_all==TRUE){
    return(names(included_palettes))    
   } 
}



