#Reshaping data
library(tidyr)
library(dplyr)

#Creating a dataframe
n<-10
wide<-data.frame(
  ID=c(1:n),
  Face.1=c(411,723, 325, 456, 579, 612, 709, 513, 527, 37),
Face.2=c(123, 300, 400, 500, 600, 654, 789, 906, 413, 567),
Face.3=c(1457, 1000, 569, 896, 956, 2345, 780, 599, 1023, 678)
)
wide

#30 observations - longer
long<-wide %>%
  gather(Face, ResponseTime, Face.1:Face.3)
long

#separate() splitting a column
long_separate<-long %>%
  separate(Face, into=c("Target","Number"))
long_separate

#unite() combining columns
long_unite<-long_separate%>%
  unite(Face, Target, Number, sep=".")
long_unite

back_to_wide<-long_unite%>%
  spread(Face, ResponseTime)
back_to_wide

#Generate on dataset 4 students, john, mary, peter, susan, surnames, unite
Students=data.frame(
  Firstname=c('John', 'Mary', 'Peter', 'Susan'),
  Lastname=c('Kamau', 'Wambui', 'Njoroge', 'Atieno')
  )

#Unite the 2 columns
Students_unite<-Students%>%
  unite(Firstname, Lastname,  sep=".")
Students_unite

data("airquality")
head(airquality)
str(airquality)

#Select some columns
A<-airquality%>%select(Ozone, Solar.R, Wind, Temp)
A

#Convert to long format using gather()
long<-A%>%gather(Variable, Value, Ozone:Temp)
long

#Convert above to wide using spread()
wide<-A%>%spread(Variable, Value, Ozone:Temp)
wide

#Split a column
#Continuation Image I took - finish before Mon class