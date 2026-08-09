#Check data type
#Because 10 > 5 evaluates to TRUE, which is a logical value
#so x is assigned TRUE and its class becomes "logical".
class(x <- 10 > 5)

#Type Conversion
as.numeric('42') #converted from character to numeric
as.character(100)
as.logical(1) #converted from numeric to logical
as.logical(0)
as.numeric(TRUE)
as.numeric(FALSE)

class('Male') 
as.numeric('Male') #Later on we will be taught how to do this
#"male" is text (character), not a numeric value
#as.numeric() only works on values that look like numbers (e.g., "10" → 10)

#Conversions
as.character(65)

as.logical('TRUE')

as.logical(0)

#Using <- assigns a value to a variable
#Output shows the variable and the value
price <- 29.99
item <- 'notebook'
in_stock <- TRUE

#Use =
name='Alice'
#Works

#Use ->
42 -> answer
#Works

a <- 5
b <- a
a <- 10
print(b)
#Why is b equal to 5/ retained original value?
#b gets a copy of the current value of a (which is 5), so changing a later to 10 does not affect b.

#Arithmetic Operations
#Just Use Operations( + - * / ^ **)

#Basic
15+27

17/5

100-8

12 * 6

29/4

29 %% 4 #Modulus(remainder)

29 %/% 4

#Assign values to Variables
a<-10
b<-3
a+b
a*b
a/b

#Order of Operations
#PEMDAS/BODMAS
(10+2) * 3 #1Bracket then multiplication

#Logical Operations
#Returns TRUE or FALSE
#Logical Operators & < > == != |

#Create variables age <- 25 and has_license <- TRUE.
#Write a logical expression that returns TRUE if the person is at least 18 and has a license.
age<-25 
has_license<-TRUE
age >=18 & has_license
