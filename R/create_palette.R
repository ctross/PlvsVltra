#' create_palette
#'
#' This is a function to pull colors from an image.
#' @param path  The path to the image to be used for the palette.
#' @param n_colors The size of the palette.
#' @return A vector of hex codes.
#' @export

create_palette = function(path, n_colors){
 if(n_colors>13) stop("Only palettes up to 13 colors are supported.")
 img = imager::load.image(path)
 asr1 = dim(img)[1:2]
 asr = asr1[2]/asr1[1]
 size_out = 2^3*3*5*7
 hex_out = rep(NA, n_colors)

 y = imager::resize(img,size_out,round(size_out*asr,0))         
 
 y_extra =  imager::imsub(y, y < size_out/8) 

 y_parts = imager::imsplit(y_extra, "x", n_colors + 1) 

 intensity = rep(1/(n_colors+1), n_colors+1)
 cs_intensity = cumsum(intensity)

 mcsi = (1 - cs_intensity)

 for(i in 1:n_colors){
    y_parts[[i]][,,1,1:3] =  mcsi[i]
 }
 
 y_parts[[n_colors+1]][,,1,1:3] = 0

 panel = imager::imappend(y_parts,"x")
 parts = list(y, panel)
 
 y_new = imager::imappend(parts,"y")

 box_x_lims =  cs_intensity*size_out
 box_y_lim = round(size_out*asr,0)
 
 i = 1
 while(i <= (n_colors+1)){
   loc = imager::grabPoint(y_new)
   if(i>n_colors & loc[2]<box_y_lim){
    i = i
   } else{
   if(loc[2]>box_y_lim){
   ###################################### If a redo 
    new_i = min(which(loc[1]<box_x_lims))
    i = ifelse(new_i==(n_colors+1),(n_colors+2),new_i)
   } else{
   ###################################### Add new value to palette 
   rgb_val = y[loc[1],loc[2],1,]
   hex_val = rgb(rgb_val[1], rgb_val[2], rgb_val[3], maxColorValue=1) 
   hex_out[i] = hex_val

   for(j in 1:3){
   y_parts[[i]][,,1,j] = rgb_val[j]
   }

   t_locs = round(dim(y_parts[[i]])/2,0)
   text_col = ifelse(sum(rgb_val)/3 > 0.5,"black","white")

   y_parts[[i]] = imager::draw_text(y_parts[[i]], round(t_locs[1]/2,0), t_locs[2], hex_val, text_col, opacity = 1, fsize = 20)

   panel = imager::imappend(y_parts,"x")
   parts = list(y, panel)
   y_new = imager::imappend(parts,"y")
  
   i = i+1

   }}
 }

  plot(y_new)
  return(hex_out)

}



