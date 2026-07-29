#Load dataset
dataset=read.csv("C:\\Users\\T2Gic\\Downloads\\archive (4)\\StudentPerformanceFactors.csv")
str(dataset)

set.seed(123)
train_index <- sample(1:nrow(dataset), 0.8 * nrow(dataset))
train_data <- dataset[train_index, ]
test_data <- dataset[-train_index, ]

#Multiple linear regression model
#On training set to predict Exam_Score using Hours_Studied, Attendance, Sleep_Hours and Previous_Scores
model <- lm(Exam_Score ~ Hours_Studied + Attendance + Sleep_Hours + Previous_Scores,
            data = train_data)
summary(model)

#Use fitted model to predict Exam_Scores on test set
predicted_scores <- predict(model, newdata = test_data)
predicted_scores

#Evaluate performance on test set using RMSE and R^2
# RMSE
rmse <- sqrt(mean((test_data$Exam_Score - predicted_scores)^2))
rmse

# R-squared
r2 <- 1 - sum((test_data$Exam_Score - predicted_scores)^2) /
  sum((test_data$Exam_Score - mean(test_data$Exam_Score))^2)
r2

##Interpret the coefficients & comment which predictor has the strongest effect
#The strongest predictor is Hours_Studied (β = 0.290), followed by Attendance (β = 0.198) and Previous_Scores (β = 0.047). Sleep_Hours (β = −0.031) has no statistically significant effect on Exam_Score
#Hours studied has the strongest effect