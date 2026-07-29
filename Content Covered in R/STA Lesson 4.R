#Calculate mean, mode and median (Measure of Central Tendency)
#Used for Descriptive Statistics

#Ungrouped data
#Height of students
height<- c(168, 161, 167, 179, 184, 166, 198, 187, 191, 179)

#Mean
a=mean(height)
print(a)

# Mode
#why is output numeric?, this is not the mode function in R
#Have to do it manually
bii=mode(height)
print(bii)

#Mode, have to do it manually
b<-names(sort(table(height), decreasing = TRUE))[1]
print(b) #Why is output in quotes

#Median
c=median(height)
print(c)

#var()
#cov()
#sd()
#cor() require 2 sets of data
#you can write the formula for mean, mode and median and still get an answer, only works for small datasets

#Basic Statistics on built-in iris data
#What are Sepal.Length Sepal.Width Petal.Length Petal.Width Species?
head(iris)

mean(iris$Sepal.Length)

sd(iris$Sepal.Length)

cor(iris$Sepal.Length, iris$Petal.Length)


#Linear Model
head(iris)
a<-lm(Sepal.Length ~ Sepal.Width, data = iris)
print(a)

library(dplyr) #update to latest version
library(heplots) #not installed yet

#Using heplots
library(heplots)

# example dataset
data(iris)

# MANOVA
fit <- manova(cbind(Sepal.Length, Sepal.Width) ~ Species, data = iris)

# HE plot
heplot(fit)
