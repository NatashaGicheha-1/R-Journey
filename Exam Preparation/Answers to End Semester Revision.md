# 📘 Answers to End Semester Revision file

# 🌟 How to Use This Guide

For every question:
- ✅ Learn the answer
- 🧠 Understand the concept
- 🎯 Memorize the exam tip
- 🔑 Use the memory trick

---

# 📊 SECTION 1: MCQs ON STATISTICAL COMPUTING & MACHINE LEARNING

## Q1. What is Machine Learning?
✅ Answer: A branch of data science that learns patterns from data to make predictions.

🧠 Explanation:
Machine Learning allows computers to learn from examples instead of being explicitly programmed for every task.

🎯 Exam Tip:
* Look for keywords:
  * Prediction.
  * Learning from data.
  * Pattern recognition.
  * Training Data

🔑 Memory Trick:
🤖 Machine Learning = Learn ➜ Predict

---

## Q2. Which pair is correctly matched?
|Technique|Output|
|--------|-------|
|A. Classification |Continuous numerical output|
|B. Regression | Categorical output|
|C. Classification | Categorical output|
|D. Clustering | Labelled output|

✅ Answer: C. Classification - Categorical output

🧠 Explanation:
Classification predicts categories such as Pass/Fail, Yes/No, Spam/Not Spam.

* 🎯Exam Tip:
  * Regression = numbers.
  * Classification = categories.

---

## Q3. Focus of Classical Statistics
✅ Answer: Model interpretability and hypothesis testing.

🧠 Explanation:
Classical statistics aims to explain relationships and test hypotheses.

* 🎯 Exam Tip:
  * Statistics asks WHY.
  * Machine Learning asks WHAT WILL HAPPEN.

---

## Q4. ggplot(...)+geom_point()
✅ Answer: Scatter plot.

🧠 Explanation:
geom_point() draws individual points showing a relationship between two variables.

🎯 Exam Tip: point = scatter plot

---

## Q5. factor(cyl)
✅ Answer: Categorizes cylinder values.

🧠 Explanation:
Converts numerical values into categories.

---

## Q6. Histogram Function
✅ Answer: geom_histogram()

🧠 Explanation:
Used to visualize distributions of numerical data.

---

## Q7. Machine Learning Training Package?
✅ Answer: caret

🧠 Explanation:
caret supports splitting data, training models, tuning and evaluation.

|Package|Main Use|
|------|----|
|tidyr| Provides functions for tidying and reshaping datasets.|
|dplyr| Provides functions for data manipulation and transformation.|
|palmerpenguins| Contains the Palmer Penguins dataset for data analysis and machine learning.|
|caret| Provides tools for data splitting, model training, tuning, and evaluation.|
|class| Implements classification algorithms such as k-Nearest Neighbours (k-NN).|
|rpart| Builds decision tree models for classification and regression tasks.|
|rpart.plot| Creates enhanced visualizations of decision tree models.|
|cluster| Provides methods for cluster analysis and clustering validation.|
|factoextra| Offers functions for visualizing clustering and multivariate analysis results.|


* 🔑 Memory Trick:
  * tidyr → TIDY → Clean and reshape data.
  * dplyr → DATA → Manipulate data.
  * palmerpenguins → PENGUINS → Sample dataset.
  * caret → CARE → Train, tune, evaluate models.
  * class → CLASSIFY → k-NN classification.
  * rpart → PARTITION → Decision tree splits.
  * rpart.plot → PLOT → Visualize decision trees.
  * cluster → CLUSTER → Group similar observations.
  * factoextra → EXTRA VISUALS → Visualize clustering results.

---

## Q8. Example of Unsupervised Learning?
✅ Answer: Clustering

🧠 Explanation:
No labels are provided. The algorithm discovers groups naturally.

* 👥 Examples:
  - Customer Segmentation
  - Document Grouping
  - Market Basket Analysis

* Types of Machine Learning:
  * 1.Supervised Learning
  * 2.Unsupervised Learning

### Supervised Learning

| Type | Purpose | Main Example |
|------|---------|--------------|
| Classification | Predict categories/classes | Email Spam Detection |
| Regression | Predict continuous values | House Price Prediction |
| Decision Trees | Make predictions using tree rules | Loan Approval Prediction |
| Random Forest | Improve prediction using many trees | Customer Churn Prediction |
| k-Nearest Neighbors (k-NN) | Classify based on similar observations | Iris Flower Classification |

------------------

### Unsupervised Learning

| Type | Purpose | Main Example |
|------|---------|--------------|
| Clustering | Group similar observations | Customer Segmentation |
| Hierarchical Clustering | Create clusters in a tree structure | Grouping Animal Species |
| Association Rule Learning | Discover item relationships | Market Basket Analysis |
| Dimensionality Reduction (PCA) | Reduce variables while preserving information | Visualizing High-Dimensional Data |
| Anomaly Detection | Identify unusual observations | Credit Card Fraud Detection |

### Memory Trick

**Supervised = Predict (Label Available)**
- Classification
- Regression
- Decision Trees
- Random Forest
- k-NN

**Unsupervised = Discover (No Label Available)**
- Clustering
- Hierarchical Clustering
- Association Rules
- PCA
- Anomaly Detection
---

## Q9. Negative Relationship
✅ Answer: mpg increases as wt decreases.

🧠 Explanation:
Variables move in opposite directions.

📉 Negative Correlation = one up, one down.

---

## Q10. Which package implements k-Nearest Neighbours (k-NN) in R?
✅ Answer: class

🧠 Explanation:
The class package contains the knn() function.

---

## Q11.  What does the color = disp aesthetic inside aes() do?
✅ Answer: Maps displacement values to colors.

🧠 Explanation:
Color becomes data-driven.

---

## Q12. Learning from Labelled Data
✅ Answer: Supervised Learning

🧠 Explanation:
The algorithm learns from input-output pairs.

---

## Q13. Boxplot Geometry
✅ Answer: geom_boxplot()

🧠 Explanation:
Displays median, quartiles and potential outliers.

### Memory Trick
* Scatter plot - geom-point()
* Box plot - geom_boxplot()
* Line graph - geom_line()
* Bar chart - geom_bar()
* Histogram - geom_histogram()

---

## Q14. Purpose of geom_smooth()
✅ Answer: Shows the overall trend.

🧠 Explanation:
Often displays a regression line.

---

## Q15. Typical Classification Workflow
Data Collection ➜ Data Cleaning ➜ Expolatory Data Analysis ➜ Feature Engineering ➜ Model Building ➜ Evaluation ➜ Deployment

| Step | Definition | Main Goal | Example |
|--------|--------|--------|--------|
| 📥 **Data Collection** | The process of gathering relevant raw data from various sources for analysis and machine learning model development. | Obtain data for analysis and model building. | Collecting student marks, attendance records, and study hours. |
| 🧹 **Data Cleaning** | The process of identifying, correcting, removing, or handling inaccurate, incomplete, duplicated, or irrelevant data. | Improve data quality and reliability. | Removing duplicates, correcting errors, and handling missing values. |
| 🔍 **Exploratory Data Analysis (EDA)** | The process of summarizing and visualizing data to understand its structure, patterns, relationships, and anomalies. | Discover insights and understand the dataset. | Creating histograms, boxplots, scatter plots, and summary statistics. |
| ⚙️ **Feature Engineering** | The process of creating, transforming, and selecting variables that improve the predictive performance of a machine learning model. | Create useful predictors for the model. | Converting Birth Year into Age or creating BMI from Height and Weight. |
| 🤖 **Model Building** | The process of training a machine learning algorithm to learn patterns and relationships from data. | Develop a predictive or classification model. | Training a Linear Regression or k-NN model. |
| 📏 **Evaluation** | The process of assessing the performance and predictive accuracy of a machine learning model using appropriate metrics. | Determine how well the model performs. | Measuring Accuracy, Precision, Recall, RMSE, MAE, or R². |
| 🚀 **Deployment** | The process of integrating a trained machine learning model into a real-world environment where it can make predictions on new data. | Make the model available for practical use. | Deploying a spam detection model in an email system. |

### Memory trick
|Classification Workflow |Main use|
|-------------------------|-------|
|Data Collection|Gather data.|
|Data Cleaning|Fix errors.|
|EDA|Understand patterns.|
|Feature Engineering|Create useful variables.|
|Model Building |Train model.|
|Evaluation|Measure performance.|
|Deployment|Use model in production.|

### Difference in Content of Summary Statistics in Numerical data and Categorical data
* Numerical Data Shows:
  * Mean.
  * Median.
  * Mode.
  * Minimum.
  * Maximum.
  * Range.
  * Variance.
  * Standard Deviation.
  * Quartiles (Q1, Q2, Q3).
  * Interquartile Range (IQR)
  
Example: Marks, Age, Salary, Height

* Categorical Data Shows:
  * Frequency (Count).
  * Relative Frequency (%).
  * Proportion.
  * Mode (Most Common Category)
  
Example: Gender, Department, County, Pass/Fail

--------------------------------------
--------------------------------------

# 🎯 SECTION 2: QUIZ 2 OVERVIEW

## Q1
✅ Answer:
Ann and Ben remain.

🧠 Step-by-Step:
65 ≥ 60 ✅
80 ≥ 60 ✅
55 ≥ 60 ❌

⚠️ Common Mistake:
Writing only names without understanding filtering.

---

## Q2
✅ Answer: Unsupervised Learning

🧠 Finds hidden patterns in unlabeled data.

---

## Q3
✅ Answer: arrange()

🧠 Used to sort rows.

🔑 Memory Trick:
arrange = arrange neatly.

---

## Q4
✅ Answer: ggplot2

🧠 Most popular visualization package in R.

---

## Q5
✅ Answer: 3

🧠 Step-by-Step:
15 ÷ 4 = 3 remainder 3.

Therefore:
15 %% 4 = 3

---

## Q6
✅ Answer: Logical

🧠 Stores TRUE and FALSE values.

---

## Q7
✅ Answer: Correlation Coefficient

🧠 Measures:
- Strength
- Direction
of a linear relationship.

🎯 Exam Tip:
Range = -1 to +1.

---

## Q8
✅ Answer: tidyr

🧠 Used for reshaping data.

Important Functions:
- pivot_longer()
- pivot_wider()

---

## Q9
✅ Answer: mutate()

🧠 Creates or modifies columns.

Example:

```r
students |> mutate(Grade = Marks/100)
```

⚠️ Common Mistake:
Confusing mutate() with filter().

---

## Q10
✅ Answer: Pass

```r
x <- 15
if(x > 10){
 print("Pass")
}
```

15 > 10 = TRUE

Output = Pass

---

## Q11
✅ Answer: Comma (,)

```r
df[row, column]
```

---

## Q12
✅ Answer: Data Cleaning

🧹 Removes errors and inconsistencies.

---

## Q13
✅ Answer: Probability Density

🧠 probability=TRUE changes histogram counts into densities.

⚠️ Common Mistake:
Confusing density with population density.

---

## Q14
✅ Answer:

```r
students <- read.csv("students.csv")
```

🧠 Imports a CSV file into R.

---

## Q15
✅ Answer:

```r
geom_point()
```

🧠 Creates a scatter plot.

---

## Q16
✅ Answer: theme()

🧠 Changes visual appearance.

Examples:

```r
theme_minimal()
theme_bw()
```

⚠️ Common Mistake:
Thinking aes() changes plot style.

---

## Q17
✅ Answer:

```r
model <- lm(Salary ~ Experience, data = business)
```

🧠 lm() stands for Linear Model.

---

## Q18
✅ Answer:
1. Scatter Plot
2. Regression Line

🧠 geom_point() + geom_smooth(method='lm')

---

## Q19
✅ Answer: 20

🧠 Step-by-Step:
0 + 2 = 2
2 + 3 = 5
5 + 4 = 9
9 + 5 = 14
14 + 6 = 20

Final Answer = 20 ✅

---

## Q20
✅ Answer: filter()

🧠 Selects rows satisfying conditions.

Example:

```r
filter(students, Marks >= 60)
```

---

# 📌 Frequently Confused dplyr Functions

✅ filter() → Rows
✅ select() → Columns
✅ arrange() → Sort Rows
✅ mutate() → Create/Modify Columns
✅ summarise() → Aggregate

---

# 🎨 ggplot2 Cheat Sheet

✅ geom_point() → Scatter Plot
✅ geom_line() → Line Graph
✅ geom_bar() → Bar Chart
✅ geom_histogram() → Histogram
✅ geom_boxplot() → Box Plot
✅ geom_smooth() → Trend Line
✅ aes() → Mapping
✅ theme() → Appearance

---

# 🤖 Machine Learning Cheat Sheet

Supervised Learning
- Regression
- Classification

Unsupervised Learning
- Clustering
- Dimensionality Reduction

---

# 🎓 Final Exam Affirmations

🌟 My effort today is my confidence tomorrow.

Pinyin:
Wǒ jīntiān de nǔlì shì wǒ míngtiān de xìnxīn.

汉字:
我今天的努力是我明天的信心。

🌱 One question at a time.

Pinyin:
Yí ge tí yí ge tí lái.

汉字:
一个题一个题来。

🚀 You can do this!
