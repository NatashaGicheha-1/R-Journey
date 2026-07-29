#Quiz 1 Preparation
#Statistical Computing
#STA1040

#Import built in data
data(iris)

#Display the first six observations
head(iris)

#Finding mode of Sepal.Length in iris dataset
#Method A ##Preferred
as.numeric(names(which.max(table(iris$Sepal.Length))))

#Method B
# Mode function
mode_val <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_val(iris$Sepal.Length)

#Selecting variables
library(dplyr)
iris%>%select(Petal.Length)


ncol(iris$Petal.Length)
#Output NULL because iris$Petal.Length is considered a vector but ncol() is only for dataframes

#Load downloaded dataset
Titanic<-read.csv("C:\\Users\\T2Gic\\Downloads\\Statistical Computing STA 1040UA\\Datasets\\Titanic-Dataset.csv")

#Display 1st 6 observations
head(Titanic)
library(dplyr)
glimpse(Titanic)

#Basic Operations
sd(Titanic) 
#error sd() and var() ONLY work on numeric data 
#1convert everything to numeric
#2ensure there are no missing values

#Method B - use a numerical column in dataframe
head(Titanic$Age)
sd(Titanic$Age, na.rm=TRUE)

#sd() is used in numeric lists, dataframe
var(Titanic)
class(Titanic)

#Calculate the average fare paid by males and females separately. 
a<-Titanic%>%group_by(Sex)%>%summarise(Average_Fare=mean(Fare, na.rm = TRUE))
head(a) 
#Output:
#1st grouped passengers by gender then calculated the average fare for each group
#(Average_Fare=mean(Fare, na.rm = TRUE)) - Compute the average fare for each group, ignoring missing values, and name the result Average_Fare 

#Find the five passengers who paid the highest fare.
#Method A with variable
b<-Titanic%>%arrange(desc(Fare))%>%slice_head(n=5)%>%select(Name, PassengerId, Fare)
print(b)

#Method B without variable - still runs successfully
Titanic%>%arrange(desc(Fare))%>%slice_head(n=5)%>%select(Name, PassengerId, Fare)

#Load another online dataset
Wine=read.csv("C:\\Users\\T2Gic\\Downloads\\Statistical Computing STA 1040UA\\Datasets\\WineQT.csv")
head(Wine)

#Check/Count for missing values
colSums(is.na(Wine)) #output shows no column is null

# Introduce missing values
library(dplyr)
glimpse(Wine)
Wine$fixed.acidity[c(7,11,21)] <- NA #inside the c() are indices, must be integers
Wine$volatile.acidity[c(70,8,12)] <- NA #indices don't have to be orderly
Wine$chlorides[c(76,7,29)] <- NA

#After
colSums(is.na(Wine))
