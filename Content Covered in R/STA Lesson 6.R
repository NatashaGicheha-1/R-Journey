#Load data
library(MASS)
data(Pottery)

#Ways of importing data
#Get Working Directory
getwd()

#Set Working Directory - Folder name only
setwd("C:\\Users\\T2Gic\\Downloads\\Statistical Computing STA 1040UA\\Data")

#Name of the file
Pottery<-read.csv("pottery.csv", header = TRUE)
head(Pottery)

#How to get built in data from R
#To see all datasets
data()

#Viewing some inbuilt datasets
head(Aids2)

head(HairEyeColor)

#Data Manipulation Using dplyr
#Load data
data(iris)
head(iris)
library(dplyr)

#Select columns
iris%>% dplyr::select(Sepal.Length, Species)

#Filter rows
iris%>% dplyr::filter(Sepal.Length>7)

#Create new variable using mutate()
iris2<-iris%>%mutate(SepalRatio=Sepal.Length/Sepal.Width)
head(iris2)

#Rename variables - useful since it makes names easier to understand and code
iris%>%rename(Length=Sepal.Length)

#Summarize data- what is the average Sepal Length= 5.843333
iris%>%summarise(Mean_Sepal_Length=mean(Sepal.Length))


