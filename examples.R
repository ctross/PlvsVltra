
library(ggpubr)
# Grouped Scatter plot with marginal density plots
ggscatterhist(
  iris, x = "Sepal.Length", y = "Sepal.Width",
  color = "Species", size = 3, alpha = 0.6,
  palette = c("#00AFBB", "#E7B800", "#FC4E07"),
  margin.params = list(fill = "Species", color = "black", size = 0.2)
  )



ggscatterhist(
  iris, x = "Sepal.Length", y = "Sepal.Width",
  color = "Species", size = 3, alpha = 0.6,
  palette = plvs_vltra_palettes("ocean_sunset")[1:3],
  margin.plot = "boxplot",
  ggtheme = theme_bw()
  )


library(ggridges)
ggplot(iris, aes(x = Sepal.Length, y = Species)) +
  geom_density_ridges(aes(fill = Species)) +
  scale_fill_manual(values = plvs_vltra_palettes("ocean_sunset")[1:3])



 foods = c("Tagine", "Zaalouk", "Harira", "Paella", "Bacalao", "Francesinha","Alheira") 
 df = data.frame(foods = sample(foods, 1000, replace=TRUE), price = rnorm(1000, 25, 5))

 ggplot(df, aes(x = price, y = foods)) +
  geom_density_ridges(aes(fill = foods)) +
  scale_fill_manual(values = plvs_vltra_palettes("ocean_sunset"))


 foods = c("Tagine", "Zaalouk", "Harira", "Paella", "Bacalao", "Francesinha","Alheira") 
 df = data.frame(foods = sample(foods, 1000, replace=TRUE), price = rnorm(1000, 25, 5))

 ggplot(df, aes(x = price, y = foods)) +
  geom_density_ridges(aes(fill = foods)) +
  scale_fill_manual(values = plvs_vltra_palettes("dust_storm"))


font_add_google("Audiowide")
## Automatically use showtext to render text for future devices
showtext_auto()

        
imgurl = "C:\\Users\\pound\\Desktop\\flower131.png"
s = sticker(imgurl, package="PlvsVltra", p_family = "Audiowide", p_size=20, s_x=1, s_y=0.7, s_width=.6, h_fill="#F4DDCA", h_color="#052458", p_color="#052458",filename="logo.png")
s 


library(ggplot2)
 
# create a dataset
specie <- c(rep("sorgho" , 6) , rep("poacee" , 6) , rep("banana" , 6) , rep("triticum" , 6) )
condition <- rep(c("normal" , "stress" , "Nitrogen", "water", "love", "air") , 4)
value <- abs(rnorm(24 , 0 , 15))
data <- data.frame(specie,condition,value)
 
# Grouped
ggplot(data, aes(fill=condition, y=value, x=specie)) + 
    geom_bar(position="dodge", stat="identity") +
     scale_fill_manual(values=plvs_vltra_palettes("dust_storm")[1:6])


     