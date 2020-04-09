#ve_quakes<-datasets::quakes

library(datasets)
data("quakes")
e_quakes <-datasets::quakes

#extracting cols & rows from the dataset
e_quakes[,c(1,2)]
head(e_quakes)
tail(e_quakes)

#summary & plots
summary(e_quakes$depth)
summary(e_quakes)
plot(e_quakes$stations)
plot(e_quakes)

#points & lines
#"p" = point "l" = lines "b" = both
plot(e_quakes$lat, type = "b")

#adding labels
plot(e_quakes$lat , xlab = 'X axis label' , ylab  = 'y axis label',
     main = 'lattitude', col = 'blue')

#horizontal bar plot
barplot(e_quakes$lat , main = 'lattitude info' , horiz = F)

#histogram
hist(e_quakes$lat)
hist(e_quakes$lat, main = "lattitude" , xlab = 'xaxis label', col = 'red')

#box plot
boxplot(e_quakes$lat)

#multiple box plot
boxplot(e_quakes[,1:5], main = 'Multiple box plots')

#margin for the grid - (mar)
#no of rows & cols - (mfrow)
#whether a border is to be included - (bty)
#position of the labels (las= 1 for horizontal, las = 0 for vertical)
#box around the plot - (byt)

par (mfrow=c(2,2), mar = c(2,5,2,1), las = 1, bty="n")
plot(e_quakes$lat)
barplot(e_quakes$lat ,e_quakes$long)
hist(e_quakes$depth)
boxplot(e_quakes$lat)








