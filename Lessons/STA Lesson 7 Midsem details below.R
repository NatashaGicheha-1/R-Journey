#Create dataset
#Set seed for reproducibility
set.seed(123)

#Generate sample data
student_data<-data.frame(
  StudentID=1:30,
  Age=sample(18:30, 30, replace=TRUE),
  Height=round(rnorm(30, 170, 8),1), 
  Weight=round(rnorm(30, 70, 12),1), 
  Score=round(rnorm(30, 75, 10),1)
  )

#View Student data
print(student_data)

#Create missing value
student_data$Age[c(3,10,20)] <- NA #column 3, 10 and 20 have missing values for age
student_data$Weight[c(5,15)] <- NA
student_data$Score[c(8,18)] <- NA
print(student_data)

#Introduce outliers
#Outliers are values in a dataset that are unusually high or low values compared to other observations in the dataset.
#👉  
student_data$Height[4] <- 220 #column 4 for height has the value 220 previously it was 172.6 
student_data$Weight[12] <- 150
student_data$Score[25] <- 10
print(student_data)

#Exploring Dataset
str(student_data) #structure;class, length, preview of content
summary(student_data)

# Count Missing Values in each column #explain?
colSums(is.na(student_data))

#Handling Missing Values
#Methods used
# 1:Remove Rows with Missing Values 
#Simple and easy but may lose important information.
data_complete<- na.omit(student_data)
nrow(student_data) #Explain output
nrow(data_complete)

#2: Replace Missing Values with Mean and 3:median- preferred
data_mean <- student_data

data_mean$Age[is.na(data_mean$Age)] 
mean(data_mean$Age, na.rm = TRUE)

data_mean$Weight[is.na(data_mean$Weight)] 
mean(data_mean$Weight, na.rm = TRUE)

data_mean$Score[is.na(data_mean$Score)] 
mean(data_mean$Score, na.rm = TRUE)

data_mean

#Detecting outliers
#Methods used:
#1.Using Boxplots
#Separately
boxplot(student_data$Height,
        main='HeightBoxplot') #Initial error since I minimized the window size
boxplot(student_data$Weight,  #Make sure R Studio is in full size before running
        main="WeightBoxplot")
boxplot(student_data$Score,
        main="ScoreBoxplot")
#Combine boxplots together

 #Load built in dataset use data()
data(airquality) 
head(airquality)

# Count Missing Values in each column 
colSums(is.na(airquality))

#Replace Missing Values with Median
#Where there is a missing value, put the median of the column

#NB:Midsem
#download data from R CSV 
#Generate own data, out of 40
#Assignmnet 1-this week - group work - submit late -10, no submission
#quiz next week

