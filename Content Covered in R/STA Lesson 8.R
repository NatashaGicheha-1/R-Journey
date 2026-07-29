#Analysing 2 variables
# Analyse bivarient - scatter plot
# Covariance betweeb variables

# Multivarient Analysis

#EDA Techniques
#Viewing dataset structure in iris dataset
data(iris)
head(iris) #1st 6 rows 
tail(iris)
str(iris)
dim(iris)
summary(iris)


#Difference between discrete and continuous variable
#Continuous variable are measurable units
#discrete
#Nominal variable - categorical variable with no specific order
#Are categorical variables numerical?No

#Summary Statistics
summary(iris)
summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$ Petal.Length)
summary(iris$Petal.Width)

Pokemon=read.csv("C:\\Users\\T2Gic\\Downloads\\Statistical Computing STA 1040UA\\Datasets\\pokemon.csv")
head(Pokemon) #displays 1st 6 rows - mention them
tail(Pokemon) #displays last 6 rows
str(Pokemon) #801 obs, 41 variables, class of each variable:chr, num, int
summary(Pokemon) # Mention the 1st variable and last variable.##extra categorical variables:length, class, mode, for numerical variables:Min. 1st Qu.  Median Mean 3rd Qu.    Max. 
dim(Pokemon) #total no of rows and column 
View(Pokemon) #capital V, variable names, mention 1st 2 and last 2

#Check total missing value
#Method A
is.na(Pokemon) #mentions each observation, whether its missing or not; True/False

#Method B
colSums(is.na(Pokemon)) #More neater

#Summary of the 1st 3 variables
#Method A
summary(Pokemon$abilities)
summary(Pokemon$against_bug)
summary(Pokemon$against_dark)

#Method B
summary((Pokemon$abilities),(Pokemon$against_bug),(Pokemon$against_dark)) # only shows 1st column summary

sapply(Pokemon, class) #full name of data type of each column

levels(Pokemon$type1)