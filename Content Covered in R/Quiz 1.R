df=read.csv("C:\\Users\\T2Gic\\Downloads\\Statistical Computing STA 1040UA\\Datasets\\student_survey.csv")
head(df)

#sum(is.na()) is for one column - count missing values
#colSums(is.na()) is for all columns
colSums(is.na(df$Department))

#read.csv() with a fullstop always
df=read-csv("C:\\Users\\T2Gic\\Downloads\\Statistical Computing STA 1040UA\\Datasets\\student_survey.csv")

library(dplyr)
glimpse(df) #50 Rows, 14 columns

colnames(df)


# (c) Data type of each column
str(df)        # compact structure of dataset
sapply(df, class)   # shows class/type of each column

summary(df)

colSums(is.na(df))

library(dplyr)

df %>%
  mutate(AverageScore = (MathScore + EnglishScore + ScienceScore) / 3) %>%
  select(Name, Department, AverageScore) %>%
  arrange(desc(AverageScore))

#5b)
sum(is.na(df$MathScore))
#5c)
df_clean <- na.omit(df)
#6
df[which.max(df$MathScore), ]
df[which.min(df$AttendanceRate), ]
``
dim(df)
