# Assignment 2: 📘 Data Mining & Exploratory Data Analysis (EDA) 

## 1. What is Exploratory Data Analysis (EDA), and why is it carried out before building a model?
Exploratory Data Analysis (EDA) is the process of examining, summarizing, and visualizing data to understand its structure, patterns, relationships, and anomalies. It is performed before modeling to detect errors, identify trends, verify assumptions, and guide feature selection.

---

## 2. Name two graphical and two numerical techniques commonly used in EDA.

| Category | Techniques |
|----------|------------|
| Graphical Techniques | Histogram, Boxplot, Scatter Plot, Bar Graph |
| Numerical Techniques | Mean, Median, Mode,Standard Deviation, Variance, Range, Interquartile Range (IQR), Correlation Coefficient |

---

## 3. In R, what information do `str()` and `summary()` each provide when applied to a data frame?

| Function | Information Provided |
|----------|---------------------|
| `str(df)` | Displays data structure, variable names, data types, and sample values. |
| `summary(df)` | Provides descriptive statistics such as minimum, maximum, mean, median, quartiles, and frequencies. |

---

## 4. What is feature engineering? Give one example of a feature engineering transformation.

Feature engineering is the process of creating, modifying, or selecting variables to improve the performance of a machine learning model.

**Example:** Converting a date variable into separate features such as **Year**, **Month**, and **Day**.

---

## 5. Why is a dataset typically split into training and test sets before model building

- A dataset is split into training and test sets to evaluate how well a model generalizes to unseen data. 
- The training set is used to build the model, while the test set is used to assess its performance and detect overfitting.

---

## 6. Write R code to randomly split a data frame `df` into 70% training data and 30% test data.

```r
set.seed(123)
index <- sample(seq_len(nrow(df)), size = 0.7 * nrow(df))
train <- df[index, ]
test <- df[-index, ]
```

---

## 7. What is the tidyr package used for in R?

The tidyr package is used for tidying and reshaping data into a consistent format, making it easier to clean, analyze, and visualize.

---
## 8. What do the `separate()` and `unite()` functions in `tidyr` do?

| Function | Purpose |
|----------|---------|
| `separate()` | Splits one column into two or more columns based on a specified delimiter or separator. |
| `unite()` | Combines two or more columns into a single column. |

# Using separate()
df <- data.frame(name = "John_Doe")
separate(df, name, into = c("FirstName", "LastName"), sep = "_")

# Using unite()
```r
df <- data.frame(
  FirstName = "John",
  LastName = "Doe"
)
unite(df, "name", FirstName, LastName, sep = "_")
```


## 9. Write R code to create a scatter plot of MPG against HP from the `mtcars` dataset using `ggplot2`.

```r
library(ggplot2)

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  labs(
    x = "Horsepower",
    y = "Miles per Gallon"
  )
```

---

## 10. How can a ggplot2 plot's appearance be customized using themes? Give an R code example.

```r
ggplot(mtcars, aes(hp, mpg)) +
  geom_point(color = "blue") +
  theme_minimal() +
  labs(title = "MPG vs HP")
```

---

## 11. Write R code to produce a frequency table for a categorical variable in the `mtcars` dataset.

```r
table(mtcars$cyl)
```

---

## 12. Write R code to compute the mean, standard deviation, and five-number summary of the `mpg` variable in `mtcars`.

```r
mean(mtcars$mpg)
sd(mtcars$mpg)
fivenum(mtcars$mpg)
```

---

# 13. Write R code to compute the correlation between `mpg` and `wt`, and interpret what the sign and magnitude of the result mean.

```r
cor(mtcars$mpg, mtcars$wt)
```

### Expected Output

```r
[1] -0.8676594
```

### Interpretation

- The **negative sign (-)** indicates an inverse relationship between `mpg` and `wt`.
- As vehicle weight (`wt`) increases, fuel efficiency (`mpg`) tends to decrease.
- The magnitude (**0.868**) is close to 1, indicating a **strong negative linear relationship**.

---

# 14. Write R code to fit a simple linear regression of `mpg` on `wt`, and state what `summary()` of the fitted model reports.

```r
# Fit a simple linear regression model
model <- lm(mpg ~ wt, data = mtcars)

# Display model summary
summary(model)
```

### What `summary()` Reports

- Regression coefficients (Intercept and Slope)
- Standard errors of coefficients
- t-values
- p-values
- Residual statistics
- R-squared and Adjusted R-squared
- F-statistic
- Overall model significance

### Interpretation

A negative slope coefficient for `wt` indicates that fuel economy (`mpg`) decreases as vehicle weight increases.

---

# 15. After fitting a linear regression model in R, what command produces diagnostic plots, and what should be checked in them?

```r
# Fit regression model
model <- lm(mpg ~ wt, data = mtcars)

# Produce diagnostic plots
plot(model)
```

### Diagnostic Plots and What to Check

#### 1. Residuals vs Fitted

Checks:

- Linearity of the relationship
- Constant variance of residuals (homoscedasticity)

A random scatter around zero is desirable.

#### 2. Normal Q-Q Plot

Checks:

- Whether residuals are approximately normally distributed

Points should lie close to the reference line.

#### 3. Scale-Location Plot

Checks:

- Constant variance of residuals

A roughly horizontal spread of points is preferred.

#### 4. Residuals vs Leverage

Checks:

- Influential observations
- Outliers
- High-leverage points

### Key Regression Assumptions

- Linearity
- Independence
- Normality of residuals
- Constant variance (homoscedasticity)
- Absence of influential outliers

### Summary

Diagnostic plots are used to verify whether the assumptions of linear regression are satisfied and to identify potential problems that may affect model accuracy and interpretation.
# Fit
# 📚 Academic References

1. Tukey, J. W. (1977). *Exploratory Data Analysis*. Addison-Wesley.
2. Han, J., Kamber, M., & Pei, J. (2012). *Data Mining: Concepts and Techniques* (3rd ed.). Morgan Kaufmann.
3. Wickham, H. (2016). *ggplot2: Elegant Graphics for Data Analysis*. Springer.
4. R Core Team. *R Documentation* for `str()`, `summary()`, `cbind()`, `rbind()`, `table()`, and `fivenum()`.
