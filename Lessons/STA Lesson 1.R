#Can strings in R have spacing?
a<- 'Reading week 1 work'#Yes it can
print(a)

#Data type for string above
print(class(a))

#Factor Data Type
#Values
a<-c('Natasha', 'Natalie', 'Nicole', 'Michael', 'Mason', 24)#c() ensures all values in the vector are of the same data type
class((a))

#Create categories from values
b<-factor(ifelse(tolower(substr(a,1,1))=='n', 'Female', 'Male'))

#To see values and categories together, table format use data
c<-data.frame(Name=a, Gender=b)

#Results
print(c)

#Logical Operator
a=3&5#TRUE and TRUE
print(a) # All numbers from 1 onwards are TRUE

b=3&0 #TRUE and FALSE
print(b)

d=0.5&0.2
print(d)

c=3|0
print(c) #TRUE or FALSE, Output TRUE, at least one value should be TRUE

d=0|0
print(d) #FALSE

#Convert Numeric to character
a=as.character(5)
print(a)

#Convert Integer to Numeric
b=as.numeric(10)
class(print(b))

#Arithmetic function
a=round(4.7)
print(a)

b=round(4.5)
print(b)

length(c(1,2,3,4))#length is a function, counts the number of elements

#Testing c()
a<-c('My','mother','is','amazing')
print(length(a))