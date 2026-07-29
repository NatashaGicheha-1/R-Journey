# Overview
- The repository was created to document my R learning journey in my University courses

# Courses I have learnt R in
- Introduction to Data Science
- Statistical Computing
   
# Statistical Computing 
## 1). Data Visualisation using ggplot2
- Inbuilt datsets used:
  - mtcars
  - iris
  - diamonds

### a)mtcars dataset
<img width="425" height="169" alt="image" src="https://github.com/user-attachments/assets/e0ba6aa2-9c34-4558-8461-e5b7bb79ee06" />

### i)Scatter plot
<img width="509" height="260" alt="image" src="https://github.com/user-attachments/assets/f61b6ef8-a4b2-42af-bbe8-0157660c7d0a" />

### Interpretation
- Negative relationship among the variables, draw a line it goes downwards
- Increase in number of cylinders leads to decrease in miles per gallon
- Cars with 4 cylinders have the highest fuel efficiency ranging from approximately 22mpg-34mpg.

### Explanation of Scatter plot code 
- ggplot(mtcars, aes(cyl, mpg)) - Creates a plot using the mtcars dataset, mapping cyl to the x-axis and mpg to the y-axis.
- Plus sign adds another layer to the plot.
- geom_point() - Displays the data as points in a scatter plot
- labs(title = "Distribution of Miles Per Gallon and Number of Cylinders in mtcars dataset") - Adds a title to the plot 

### Change the Scatter plot command by wrapping factor() around cyl
<img width="509" height="259" alt="image" src="https://github.com/user-attachments/assets/c4ead58b-b877-4d7a-8ec7-207a7bd39e36" />

### Difference with the first scatter plot
- X axis is shown that it is categorised

### b) iris dataset
<img width="483" height="107" alt="image" src="https://github.com/user-attachments/assets/7917df69-de03-4559-bf91-ac17b6d453cf" />

### Scatter plot
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
- Dots are in different colors representing different displacement values.
- 3 variables mentioned:mpg, wt and disp.
- Darker dots have high fuel efficiency, low engine displacement disp and weigh less.

### Edit to add a size aesthetic mapped to disp variable
<img width="557" height="258" alt="image" src="https://github.com/user-attachments/assets/60dd578d-fef3-4af0-b4f5-785266a7d645" />

### Interpretation
- Negative linear relationship among the variables.
- Larger dots compared to the previous plot
- Default color is black.
- Displacement is in terms of size previous plot displacement is in terms of color

#### NB: Shape() only works with categorical data

### c)diamonds dataset
<img width="501" height="163" alt="image" src="https://github.com/user-attachments/assets/5dd88bcc-0a28-4c63-8b57-4e048fe1d172" />

### Scatter plots
<img width="550" height="260" alt="image" src="https://github.com/user-attachments/assets/2a57136e-90d0-4442-ae97-df27547b57c0" />

### Interpretation
- Strong positive relationship between carat and price.
- Spread of points widens as carat increases, indicating greater variability in price among larger diamonds.

### Add geom smooth using method = 'gam' and formula = 'y ~ s(x, bs = "cs")
<img width="446" height="263" alt="image" src="https://github.com/user-attachments/assets/05865434-e520-4a4e-9e8f-0f546b6978c7" />

### Interpretation
- The blue smooth curve summarizes the average relationship between carat and price.
- It reveals that the relationship is non-linear
- The gray band shows uncertainty around the estimated trend.
  
### Differences with the previous one
- The first plot suggests a positive relationship, but the second plot makes it clear that the relationship is strong, positive, and non-linear.
- The trend line highlights how price accelerates with carat size and shows that the effect is not constant across all diamond sizes.

<img width="449" height="256" alt="image" src="https://github.com/user-attachments/assets/18e7c3af-483e-4253-802f-3e1aeba829bf" />

### Interpretation
- Positive non linear relationship among variables.
- Several colors representing different clarity values

### Make the points 40% opaque
<img width="443" height="257" alt="image" src="https://github.com/user-attachments/assets/9fd18828-e596-4a0f-8b85-d791b890bace" />

### Differences
- geom_point() - Image 1
- geom_point(alpha=0.4) - Image 2
- Dots in Image 2 are lighter compared to Image 1

### ii) Histogram
<img width="443" height="257" alt="image" src="https://github.com/user-attachments/assets/65f07f38-7948-4ddc-b11a-29840f5f90e4" />

### Interpretation
- Wide spread of data
- Positive/rightly skewed - there are  few cars with high miles per gallon values.
- The peak is in the range~(13-22.50) showing high concentration.

## Summary
- Scatter plot - geom-point()
- Box plot -  geom_boxplot()
- Line graph - geom_line()
- Bar chart - geom_bar()
- Histogram - geom_histogram()
  
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
  
