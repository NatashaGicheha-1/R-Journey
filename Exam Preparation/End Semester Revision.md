# End Semester Revision
## 📊1.MCQS on Statistical Computing & Machine Learning 
One question at a time. One step at a time. - English
Yí ge tí yí ge tí lái. Yí bù yí bù lái -Chinese(Pinyin)
一个题一个题来。一步一步来 - Chinese(Hanzi)
---

# Multiple Choice Questions

### Q1. Which statement best defines Machine Learning?
A. A method for storing data in databases

B. A branch of data science that learns patterns from data to make predictions

C. A method for creating visualizations only

D. A statistical test used for hypothesis testing

### Q2. Which pair is correctly matched?
A. Classification → Continuous numerical output

B. Regression → Categorical output

C. Classification → Categorical output

D. Clustering → Labelled output

### Q3. In classical statistics, the primary focus is:
A. Prediction accuracy

B. Deep learning performance

C. Model interpretability and hypothesis testing

D. Data storage efficiency

### Q4. What does the following code do?
```r
ggplot(mtcars, aes(cyl, mpg)) +
  geom_point()
```
A. Creates a histogram of mpg

B. Creates a scatter plot of cyl vs mpg

C. Creates a boxplot of cyl vs mpg

D. Creates a line graph

### Q5. What is the effect of using:
```r
aes(factor(cyl), mpg)
```
instead of
```r
aes(cyl, mpg)
```
A. Converts mpg to a factor

B. Changes the y-axis to categories

C. Categorizes the x-axis values of cyl

D. Removes the x-axis

### Q6. Which ggplot2 function is used to create a histogram?
A. geom_bar()

B. geom_line()

C. geom_boxplot()

D. geom_histogram()

### Q7. Which package is commonly used for data splitting, model training, tuning, and evaluation?
A. cluster

B. caret

C. class

D. tidyr

### Q8. Which of the following is an example of unsupervised learning?
A. Regression

B. Classification

C. Clustering

D. Logistic regression

### Q9. In a scatter plot of wt versus mpg, a negative relationship means:
A. Both variables increase together

B. mpg increases as wt decreases

C. wt remains constant

D. No relationship exists

### Q10. Which package implements k-Nearest Neighbours (k-NN) in R?
A. class

B. rpart

C. dplyr

D. factoextra

### Q11. What does the color = disp aesthetic inside aes() do?
A. Changes point shapes using displacement values

B. Maps displacement values to different colors

C. Changes plot background color

D. Creates multiple plots

### Q12. Which machine learning category learns from labelled data?
A. Reinforcement learning

B. Unsupervised learning

C. Supervised learning

D. Dimensionality reduction

### Q13. Which ggplot2 geometry is used for box plots?
A. geom_boxplot()

B. geom_point()

C. geom_histogram()

D. geom_smooth()

### Q14. What is the purpose of geom_smooth() in a scatter plot?
A. Removes outliers automatically

B. Summarizes the trend or relationship in the data

C. Changes point colors

D. Converts variables to factors

### Q15. Which of the following is the correct sequence in a typical classification workflow?
A. Model deployment → Data collection → Evaluation → Cleaning

B. Feature engineering → Data collection → Deployment → Cleaning

C. Data collection → Data cleaning → EDA → Feature engineering → Model building → Evaluation → Deployment

D. Data collection → Deployment → Model building → EDA



> 🌟Success is the sum of small efforts repeated day in and day out.🌟

> **Chénggōng shì rìfù yírì de xiǎo nǔlì de zǒnghé.**

## 2.Quiz 2 Overview
💪I do not need to be perfect. I only need to keep going.💪 - English

Wǒ bú yòng wánměi. Wǒ zhǐ yào jìxù. - Pinyin

我不用完美。我只要继续。- Hanzi

### Question 1

```r
library(dplyr)

students <- data.frame(
  Name = c("Ann", "Ben", "John"),
  Marks = c(65, 80, 55)
)

filter(students, Marks >= 60)
```
 Determine the output produced by the code after the `filter()` function is applied?

---

## Question 2

Machine learning techniques that find patterns in data without labeled outcomes are referred to as? 

---

## Question 3

In **dplyr**, the function used to sort rows of a data frame is called ?

---

## Question 4

The R Package most widely used for Data Visualization based on the Grammar of Graphics is called

---

## Question 5

```r
x <- 15
y <- 4

x %% y
```
The output is?

---

## Question 6

The R data type used to represent TRUE/FALSE values is called? 


---

## Question 7

A statistical measure that describes the strength and direction of a linear relationship between two variables is called?

---

## Question 8

The tidyverse package used specifically for reshaping data between wide and long formats is called? 

---

## Question 9

In **dplyr**, the function used to create or modify a column in a data frame is called? 

---

## Question 10

```r
if (_____){
  print("Pass")
} else {
  print("Fail")
}
```
The output is?

---

## Question 11

The R notation used to subset rows and columns of a data frame using square brackets is written with two indices separated by a?

---

## Question 12

The process of identifying and correcting (or removing) irrelevant data is called data?

---

## Question 13

```r
hist(score,
     probability = TRUE)
```
Setting `probability = TRUE` changes the vertical axis from frequencies to?

---

## Question 14

To import a CSV file named `students.csv` into an object called `students`, complete the code:

```r
students <- ?
```

---

## Question 15

Complete the ggplot2 code to create a scatter plot:

```r
ggplot(data = cars, aes(x = speed, y = dist)) +
  ?
```

---

## Question 16

The appearance of a plot can be modified using plot?

---

## Question 17

Write the R code to fit a simple linear regression model predicting *Salary* from *Experience*?

---

## Question 18

```r
library(ggplot2)

ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  geom_smooth(method = "lm")
```

The graph contains a _________plot and a ___________

---

## Question 19

```r
total <- 0

for(i in 2:6) {
  total <- total + i
}
```
The output is?

---

## Question 20

In **dplyr**, the function used to filter rows based on conditions is called?
