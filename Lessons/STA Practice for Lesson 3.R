#Practice for Lesson 3
#Create numeric variable  
price=as.numeric(299.99) # when you write as numeric, you are assuming the value in brackets is a different class but overall its still correct
price<-299.99 #best form

#Create another numeric variable  
quantity=as.numeric(5)

#Multiply both variables
totalcost= price * quantity

#Print multiplication variable
print(totalcost)

#Check datatype
class(totalcost)

#Comparison Operators
#Assign values to each variable
x<-25
y<-30
z<-25

#Evaluate, write output as a comment
x>y #FALSE
x==z #TRUE
y!=z #TRUE
x<=25 #TRUE


#Basic Arithmetic, print each result
a=(15+7)*3
print(a)

b=100/4-8
print(b)

c=2^5
print(c)

scores<- c(85, 92, 78, 60, 45)
a=scores>70
print(a) #Why are the answers logical?
#Between 50 and 80 (inclusive)
a=scores>=50

