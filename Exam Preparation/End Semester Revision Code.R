## 12. Write R code to compute the mean, standard deviation, and five-number summary of the `mpg` variable in `mtcars`.
data(mtcars)
mean(mtcars$mpg)
sd(mtcars$mpg)
fivenum(mtcars$mpg)

## 11. Write R code to produce a frequency table for a categorical variable in the `mtcars` dataset.
table(mtcars$cyl)

##12.
library(dplyr)
students <- data.frame(
  Name = c("Ann", "Ben", "John"),
  Marks = c(65, 80, 55)
)
filter(students, Marks >= 60)

x<-15
if (x>10){
  print("Pass")
} else {
  print("Fail")
}