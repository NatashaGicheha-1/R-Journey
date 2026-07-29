#Data Frame Management with dplyr using the penguins Dataset
# dplyr Package
library(dplyr)

install.packages('palmerpenguins')
library(palmerpenguins)
data(penguins)
head(penguins)

#Keep specific columns
penguins_subset<- select(penguins, species, bill_length_mm, flipper_length_mm)
head(penguins_subset)

#Iris #Iris is inbuilt data, no need to install
data(iris)
head(iris)

#Select specific columns in iris
iris_columns<- select(iris, Sepal.Length, Sepal.Width, Petal.Length)
head(iris_columns)

#filter() choose rows
heavy_penguins