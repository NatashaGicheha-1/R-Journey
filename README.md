# Overview
- The repository was created to document my R learning journey for me to use for future references
   
# Topics covered in Statistical Computing class
## 1). Data Visualisation using ggplot2
- Inbuilt datsets used:
  - mtcars
  - iris
  - diamonds

### a)mtcars dataset
<img width="509" height="260" alt="image" src="https://github.com/user-attachments/assets/f61b6ef8-a4b2-42af-bbe8-0157660c7d0a" />

### Interpretation
- Negative relationship among the variables, draw a line it goes downwards
- Increase in number of cylinders leads to decrease in miles per gallon
- Cars with 4 cylinders have the highest fuel efficiency ranging from approximately 22mpg-34mpg.
- Cars with 6 cylinders have moderate fuel efficiency ranging from approximately 18mpg-23mpg.
- Cars with 8 cylinders have the lowest fuel efficiency ranging from approximately 11mpg-19mpg.
  
### Explanation of code used
- ggplot(mtcars, aes(cyl, mpg)) - Creates a plot using the mtcars dataset, mapping cyl to the x-axis and mpg to the y-axis.
- +- Adds another layer to the plot.
- geom_point() - Displays the data as points in a scatter plot
- labs(title = "Distribution of Miles Per Gallon and Number of Cylinders in mtcars dataset") - Adds a title to the plot 

### Change the Scatter plot command by wrapping factor() around cyl
<img width="509" height="259" alt="image" src="https://github.com/user-attachments/assets/c4ead58b-b877-4d7a-8ec7-207a7bd39e36" />

### Differences with the first scatter plot
- X axis is shown that it is categorised
- Scale is smaller

### b) iris dataset
<img width="501" height="258" alt="image" src="https://github.com/user-attachments/assets/042fd27e-5575-43d2-92cd-e22ac5548752" />

### Interpretation
- Positive linear relationship between Species and Sepal.Length.
- Majority of virginica species are estimated of Sepal.Length 5.6-7.8

### Edit to add a color aesthetic mapped to disp variable
<img width="548" height="258" alt="image" src="https://github.com/user-attachments/assets/177c8cb6-be9f-4bc4-b8ed-76c521cb3b2f" />

### Code difference
- aes(wt, mpg, color=disp))
  
### Interpretation
- Negative linear relationship among the variables.
- Dots are in different colors.
- 3 variables mentioned:mpg, wt and disp.
- Darker dots have high fuel efficiency.
- Darker dots have a low engine displacement disp
  
## 2). Machine learning(ML)
- Definition of Machine Learning
  - Machine Learning is a branch of data science that learns data patterns to make predictions
    
- Differences between Machine Learning and Classical Statistics
      ##table##
- Main parts of Machine Learning
  - Decision process
  - Error function
  - Model Optimization Process
  - 
- Categories of Machine Learning
    - Supervised - learns from labelled data(classification - categorical output, regression-continuous numerical output)
    - Unsupervised - without any labels and patterns(Clustering, Association Rule Learning and Dimensionality Reduction)
      
- How Classification Works
      Data Collection
      Data Cleaning
      Feature Engineering
      Model building
      Model deployment and evaluation
  
- Packages Used - using R version 4.5.3
  - library(caret) - Provides tools for data splitting, model training, tuning, and evaluation.
  - library(class - Implements classification algorithms such as k-Nearest Neighbours (k-NN).
  - library(rpart) - Builds decision tree models for classification and regression tasks.
  - library(rpart.plot) - Creates enhanced visualizations of decision tree models.
  - library(cluster) - Provides methods for cluster analysis and clustering validation.
  - library(factoextra) - Offers functions for visualizing clustering and multivariate analysis results.
  - library(palmerpenguins) -  Contains the Palmer Penguins dataset for data analysis and machine learning.
  - library(dplyr) -  Provides functions for data manipulation and transformation.
  - library(tidyr) - Provides functions for tidying and reshaping datasets.
  
