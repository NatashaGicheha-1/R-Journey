#Pearson Correlation Coefficient
#Understand Mathematical formula

#Correlation using R
a<-c(5, 7, 3, 8, 6, 9)
b<-c(80, 85, 60, 90, 75, 95)
c<-cor(a,b)
c
#Stong positive linear relationship between a & b
#Only when a & b follows a normal distribution

#Scatter plot
plot(
     main="Distribution of Study Hours and Exam Scores",
     x=a,#Necessary and plot()
     y=b, #N
     xlab='Study Hours',
     ylab='Exam Score',
     pch=19,
     col='orange'
     )
#Positive relationship between a & b

#Add regression line
abline(lm(b~a),col='purple')

#Regression model
e<-lm(b~a)
summary(e)

#Regression equation
y=46.0+5.5x
#The line slopes upward, indicating a positive relationship - As study hours increase, exam scores tend to increase.
#The closer the data points are to the line, the stronger the linear relationship.
#The regression equation is approximately:
     # Exam Score=43.06+5.93×Study Hours\text{Exam Score} = 43.06 + 5.93 \times \text{Study Hours}Exam Score=43.06+5.93×Study Hours

#Correlation between mpg and wt
#1st understand what will be the Dependent Variable and Independent Variable
#mpg depends on wt hence mpg is DV and wt is IV
#IV is X axis
data(mtcars)
head(mtcars, 6)
d<-cor(mtcars$mpg,mtcars$wt)
d
#Negative relationship

#Scatter plot
plot(
  x=mtcars$wt,
  y=mtcars$mpg,
  main='Distribution between mpg and wt',
  xlab='Weight',
  ylab='Miles Per Gallon',
  pch=19,
  )
#Black by default

#Simple Linear Regression Model
g<-lm(mtcars$mpg~mtcars$wt)
summary(g)

#Regression equation
y=6.04726-0.14086x


h<-lm(mpg~wt+hp+qsec+am, data=mtcars)
summary(h)

#Regression equation
#Difference between Correlation and Regression

#-----------------------------------------------------------------------------
# Load dataset
data(iris)

# Scatter plot
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     pch = 19,
     col = "darkgreen")
# Simple Linear Regression
model3 <- lm(Petal.Length ~ Sepal.Length, data = iris)

# View results
summary(model3)

# Plot with regression line
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Simple Linear Regression",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     pch = 19)

abline(model3, col = "red", lwd = 2)
# Multiple Regression
model4 <- lm(Petal.Length ~ Sepal.Length + Sepal.Width,
             data = iris)

# View results
summary(model4)

#Load dataset
data(airquality)

# Scatter Plot
plot(airquality$Temp, airquality$Ozone,
     main = "Temperature vs Ozone",
     xlab = "Temperature (F)",
     ylab = "Ozone",
     pch = 19,
     col = "blue")

# Simple Linear Regression
slr_air <- lm(Ozone ~ Temp, data = airquality)

# Regression Summary

summary(slr_air)

# Scatter Plot with Regression Line
plot(airquality$Temp, airquality$Ozone,
     main = "Simple Linear Regression: Temperature vs Ozone",
     xlab = "Temperature (F)",
     ylab = "Ozone",
     pch = 19,
     col = "blue")

abline(slr_air, col = "red", lwd = 2)

# Multiple Regression

mlr_air <- lm(Ozone ~ Temp + Wind + Solar.R,
              data = airquality)

# Regression Summary
summary(mlr_air)
