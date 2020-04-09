library(datasets)
data("airquality")
airquality <-datasets::airquality
head(airquality)

airquality[,c(1,2)]
head(airquality)
tail(airquality)
summary(airquality$temp)
summary(airquality)
plot(airquality$Ozone)
plot(airquality)

#point & lines
#"p" = point "l" = lines "b" = both
plot(airquality$Ozone, type = "b")

#horizontal bar plot
plot(airquality$Ozone, xlab = 'ozone concentration' , ylab  = 'no of instances',
     main = 'ozone levels in Ny City', col = 'blue')
barplot(airquality$Ozone, main = 'ozone concentraion in air', xlab = 'ozone levels',
        horiz= T)

#histogram
hist(airquality$Solar.R)
hist(airquality$Solar.R, main = "solar radiation values in air" ,
     xlab = "solar rad", col = "blue")

#single box plot
boxplot(airquality$Solar.R)

 #multiple box plots
boxplot(airquality[,1:4], main = 'multiple')


#margin for the grid - (mar)
#no of rows & cols - (mfrow)
#whether a border is to be included - (bty)
#position of the labels (las= 1 for horizontal, las = 0 for vertical)
#box around the plot - (byt)

par (mfrow=c(3,3), mar = c(2,5,2,1), las = 1, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = 'l')
plot(airquality$Ozone, type = 'l')
plot(airquality$Ozone, type = 'l')
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')


