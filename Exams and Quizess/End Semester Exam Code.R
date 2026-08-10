Insurance=read.csv("C:\\Users\\T2Gic\\Downloads\\archive (6)\\Train_Data.csv")
Insurance
str(Insurance)
summary(Insurance)
colSums(is.na(Insurance))

library(ggplot2)
ggplot(Insurance, aes(x = charges, y = bmi)) +
  geom_point() +
  labs(
    title = "Scatterplot of Charges against BMI",
    x = "Insurance Charges",
    y = "BMI"
  )

set.seed(123)
model<-lm(charges~bmi, data=Insurance)
summary(model)