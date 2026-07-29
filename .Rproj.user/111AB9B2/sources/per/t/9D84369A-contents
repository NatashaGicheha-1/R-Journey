#Load Libraries
library(caret)
library(class)
library(rpart)
library(rpart.plot)
library(cluster)
library(factoextra) #installed it today install.packages(factoextra) in console
library(palmerpenguins)
library(dplyr)
library(tidyr)

# Remove Missing Values and Select Predictor Variables using palmerpenguins dataset
penguins_clean<-penguins%>%drop_na()%>%select(species, island, bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g, sex)
glimpse(penguins_clean)

#Split penguins_clean into Training(70%) and Testing(30%) Sets
set.seed(123)
train_index<-createDataPartition(penguins_clean$species, p=0.7, list=FALSE)
train_data<-penguins_clean[train_index, ]
test_data<-penguins_clean[-train_index, ]
nrow(train_data);nrow(test_data)

#Regression:Predicting a Continuous Outcome
lm_model<-lm(body_mass_g ~ bill_length_mm + bill_depth_mm + flipper_length_mm, data= train_data)
predictions<-predict(lm_model, newdata=test_data)

#Prediction error in grams
RMSE(predictions, test_data$body_mass_g)

#R-squared on test data
R2(predictions, test_data$body_mass_g)