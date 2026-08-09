#Data Visualization with ggplot
#i)Scatter plots
#Load ggplot2
library(ggplot2)
library (dplyr)
library (tidyr)

#a)Use mtcars dataset
data(mtcars)
str(mtcars)
head (mtcars)
summary (mtcars)

#Scatter plot
ggplot(mtcars, aes(cyl, mpg)) + geom_point() + labs(title='Distribution of Miles Per Gallon and Number of Cylinders in mtcars dataset')

#Interpretation
#Negative relationship among the variables, draw a line it goes downwards
#Increase in number of cylinders leads to decrease in miles per gallon
#Cars with 4 cylinders have the highest fuel efficiency ranging from approximately 22mpg-34mpg.
#Cars with 6 cylinders have moderate fuel efficiency ranging from approximately 18mpg-23mpg.
#Cars with 8 cylinders have the lowest fuel efficiency ranging from approximately 11mpg-19mpg.

#aes - aesthetic - maps variables in the function to their respective axis

#Change the Scatter plot command by wrapping factor() around cyl
ggplot(mtcars, aes(factor(cyl), mpg)) + geom_point() + labs(title='Scatter Plot using factor()')

#Difference
#Scale, smaller
#X axis, clearly mentions its categorised

#b)Use iris dataset
data(iris)
str(iris)
ggplot(iris, aes(Species,Sepal.Length)) + geom_point() + labs(title='Relationship between Species and Sepal.Length')

#Edit to add a color aesthetic mapped to disp
ggplot(mtcars, aes(wt, mpg, color=disp)) + geom_point() + labs(title = "Relationship Between Vehicle Weight, Fuel Efficiency, and Engine Displacement")

#Interpretation
#Dots are in different colors
#3 variables mentioned:mpg, wt and disp
#Darker dots have high fuel efficiency
#Darker dots have a low engine displacement disp

#Difference between the 2 below
ggplot(mtcars, aes(wt, mpg, size=disp)) + geom_point() + labs(title = "Relationship Between Vehicle Weight, Fuel Efficiency, and Engine Displacement")
#Large dots

ggplot(mtcars, aes(wt, mpg, shape=disp)) + geom_point()
#error shape() only works with categorical data

data() #Diamonds is an inbuilt dataset in R

#c)Use diamonds dataset
data("diamonds")
str(diamonds)

#Scatter plot
ggplot(diamonds, aes(carat, price)) + geom_point() + labs(title='Relationship between Carat and Price in diamonds dataset')
#The lighter the carat the cheaper the price
#Highest concentration of carats between 0 to 2.5

#Add geom smooth
ggplot(diamonds, aes(carat, price)) + geom_point() + geom_smooth() + labs(title='Relationship between Carat and Price in diamonds dataset')
#Interpretation
#Strong positive relationship
#Non linear relationship, blue curve is not a straight line

#Relationship Between Carat and Price by Diamond Clarity
ggplot(diamonds, aes(carat, price, color=clarity)) + geom_point() + geom_smooth() + labs(title='Relationship Between Carat and Price by Diamond Clarity')
#Several colors
#Several lines, non linear

#Make the points 40% opaque
ggplot(diamonds, aes(carat, price, color=clarity)) + geom_point(alpha=0.4) + geom_smooth() + labs(title='Relationship Between Carat and Price by Diamond Clarity')
#Interpretation
#Dots are lighter compared to the one above

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##Questions
#Understanding Aesthetic Mappings
#1.Create a scatter plot showing:
#• Weight (wt) on the x-axis
#• Miles per gallon (mpg) on the y-axis
ggplot ( mtcars , aes ( x =wt , y = mpg ) ) +
  geom_point ()

#Mapping Colour
#2.Convert the number of cylinders into a categorical variable
mtcars$cyl<-factor ( mtcars$cyl )

#scatter plot
ggplot ( mtcars ,
         aes ( x =wt ,
               y = mpg ,
               color = cyl ) ) +
  geom_point ( size =3)

#Interpretation
#1 What does each colour represent?
#Different cylinder categories: 4, 6, 8

#2 Which cylinder category generally has the highest fuel efficiency?
#Cylinder 4


# Mapping Shape
mtcars $am <- factor ( mtcars $am ,
                       labels =c(" Automatic "," Manual ") )

ggplot ( mtcars ,
         aes (wt , mpg ,
              shape = am ) ) +
  geom_point ( size =3)

#Interpretation 
#1.What does each shape represent?
#Different categories of am variable 

#2.Is there any noticeable difference between manual and automatic cars?

#Mapping Size
ggplot ( mtcars ,
         aes (wt ,
              mpg ,
              size = hp ) ) +
  geom_point ( alpha =.7)

#ii)Histogram
ggplot ( mtcars ,
         aes ( x = mpg ) ) +
  geom_histogram ( binwidth =3 ,
                   fill =" steelblue ",
                   color =" black ") + labs(title='Frequency of Miles Per Gallon in mtcars dataset')

#Distribution:Range 10-35
#Peak 15-18
#Right skewed/positively skewed

#iii)Box Plot
ggplot ( mtcars ,
         aes ( cyl ,
               mpg ,
               fill = cyl ) ) +
  geom_boxplot ()

#Bar Chart
ggplot ( mtcars ,
         aes ( cyl ,
               fill = cyl ) ) +
  geom_bar ()
#Most cars-category 8
#Height represents the frequency count of cars in each cylinder

#Line Graph
cars2<-arrange ( mtcars , wt)
ggplot ( cars2 ,
         aes (wt , mpg ) ) +
  geom_line ()

# Multiple Aesthetic Mappings
ggplot ( mtcars ,
         aes ( x =wt ,
               y = mpg ,
               colour = cyl ,
               shape = am,
               size = hp ) ) +
  geom_point ( alpha =.7)

#Themes and Labels
#Better visualisation than the 2nd one
#-Clear background
#-x and y axis clearly identified
ggplot ( mtcars ,
         aes (wt ,
              mpg ,
              colour = cyl ) ) +
  geom_point ( size =3) +
  labs ( title =" Relationship between Vehicle Weight and Fuel Efficiency ",
         x =" Weight (1000 lbs )",
         y =" Miles per Gallon ",
         colour =" Number of Cylinders ") +
  theme_bw()

#Examples of geometric objects available in ggplot2.
#1Points
#Bars
#Boxplot

##Next class
#Define Statistics
#Why is mode not in summary()
#Formula for correlation