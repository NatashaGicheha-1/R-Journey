#Sample data
data <- c(23, 22, 22, 23, 24, 24, 23, 22, 21, 24, 23)

#Assigning values to variables
#Use <- operator
x<- 5
y<- 3

#Addition
# + operator
sum_result<- x+y

#Practice 
#Assigning values to variables
x<-7
y<-5
z<-6

#Addition
sum <- x+y+z

#Multiplication
product <- x*y*z

#Data Structures in R
# 1 Vector
a<- c(1, 2, 3, 4, 5)
print(a)

# 2 Matrices
matrix_data <- matrix(1:9, nrow = 3, ncol = 3)
print(matrix_data)

# 4 by 4 matrix containing numbers 1 to 16
b<- matrix(1:16, nrow=4, ncol=4)
print(b)

#Include byrow 
b<- matrix(1:16, nrow=4, ncol=4, byrow=TRUE)
print(b)

# 3 Lists
Facts<- list('Kenya',1, TRUE, 'English')
print(Facts)

# 4 Data Frames
c<- data.frame(Name=c('Angie', 'Alice'), Age=c(20, 21))
print(c)

#Practice
HR<- data.frame(col_ID=c(101,102,103,104), name=c('Susan', 'Moses', 'Kylie', 'Amos'), salary=c(100000, 150000, 270000, 3000000), dept=c('Finance', 'Marketing', 'IT', 'Human_Resource'))
print(HR)






