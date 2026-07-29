# ====================================================
 # Generating Simulated University Student Performance Dataset
 # ====================================================

 # Set seed for reproducibility
 set.seed (123)

# Number of students, 200 students
 n <- 200

 # Generate Student IDs
 Student_ID <- paste0 ("ST", sprintf ("%03d", 1: n ) )

 # Gender
Gender <- sample (c(" Male ", " Female ") ,
                      n ,
                   replace = TRUE ,
                    prob = c(0.48 , 0.52) )

 # Programme
Programme <- sample (c(" Statistics ",
                          " Data Science ",
                           " Mathematics ",
                          " Computer Science ") ,
                         n ,
                         replace = TRUE ,
                         prob = c(0.27 , 0.23 , 0.20 , 0.30) )
# Year of Study
Year <- sample (1:4 ,
                    n ,
                    replace = TRUE )

 # Residence
 Residence <- sample (c("On - campus ",
                       "Off - campus ") ,
                         n ,
                         replace = TRUE ,
                        prob = c(0.55 , 0.45) )

 # Scholarship
 Scholarship <- sample (c("Yes","No") ,
                          n ,
                           replace = TRUE ,
                        prob = c (0.35 ,0.65) )

 # Study Hours per Week
 Study_Hours <- round ( rnorm (n ,
                                    mean = 15 ,
                                    sd = 4) )

 Study_Hours [ Study_Hours < 5] <- 5

 # Attendance (%)
 Attendance <- round ( rnorm (n ,
                                 mean = 82 ,
                                 sd = 8) )

 Attendance [ Attendance > 100] <- 100
Attendance [ Attendance < 50] <- 50

 # CAT Score (0 -30)
 CAT_Score <- round (
   0.25 * Study_Hours +
     0.15 *( Attendance -70) +
    rnorm (n ,5 ,3)
   )

 CAT_Score [ CAT_Score < 0] <- 0
 CAT_Score [ CAT_Score > 30] <- 30

 # Final Examination (0 -70)
 Final_Exam <- round (
   0.8*CAT_Score +
     0.6* Study_Hours +
     rnorm (n ,25 ,6)
  )

 Final_Exam [ Final_Exam < 0] <- 0
 Final_Exam [ Final_Exam > 70] <- 70
 
 # Total Score
 Total_Score <- CAT_Score + Final_Exam
 
  # Letter Grade
  Grade <- cut( Total_Score ,
                  breaks = c( - Inf ,49 ,59 ,69 ,79 ,100) ,
                   labels = c("E","D","C","B","A") )
 
  # Create data frame
 student_data <- data.frame (
   Student_ID ,
    Gender ,
    Programme ,
   Year ,
    Residence ,
    Scholarship ,
   Study_Hours ,
    Attendance ,
    CAT_Score ,
   Final_Exam ,
    Total_Score ,
    Grade
    )
 
 str(student_data)
 
 #Identifying Categorical variables in dataset simulated above
 Categorical_variables<-names(student_data)[sapply(student_data,
                                                   function(x)
                                                     is.character(x) |
                                                     is.factor(x))]
 Categorical_variables
 #Interpretation
 #6 variables are categorical
 
 library(dplyr)
 a<-student_data%>%count(Programme, name='Frequency')
 a
 #Interpretation
 #A new column called 'Frequency' is created using the number of times the observations of Programme column has occured
 
 b<-student_data%>%count(Programme)%>%mutate(Proportion=n/sum(n),Percentage=round(Proportion * 100, 1))
 b
 #Interpretation
 #2 new columns are created; Proportion and Percentage
 #2 existing columns are in use:Programme, n
 #NB: Make the table visually appealing
 
 #Contingency table
 #Method A
 table(student_data$Programme,student_data$Gender)
 
 # Bar Chart
 library(ggplot2)
 ggplot(student_data,
        aes(x=Programme))+geom_bar(fill='grey')+labs(title='Distribution of Students by Programme',x='Programme', y='Number of Students')
 
 #Pie Chart
 student_data%>%count(Programme)%>%ggplot(aes(x='',y=n,fill=Programme))+geom_col()+coord_polar(theta = 'y')+labs(title='Programme Distribution')
 
     #Question
 #Generate Health dataset for 300 patients using R
 #4 variables representing common health indicators
 #Patient_ID - unique identifier 
 #Age - between 18 and 80years, 
 #Body Mass Index(BMI):Mean=26, sd=4, values to 1d.p, all values between 15 and 45
 #Systolic Blood Pressure + assosciation with both Age and BMI, include random variation, values between 90 & 200mmHg
# ----------------------------------------------------------------------

     #Answer
 # Simulated Health Dataset for 300 Patients

 # Set seed for reproducibility
 set.seed(123)
 
 # Number of patients
 n <- 300
 
 # Generate Patient IDs
 Patient_ID <- paste0("PT", sprintf("%03d", 1:n))
 
 # Age (18 to 80 years)
 Age <- sample(18:80, n, replace = TRUE)
 
 # Body Mass Index (BMI)
 # Mean = 26, SD = 4, rounded to 1 decimal place
 BMI <- round(rnorm(n, mean = 26, sd = 4), 1)
 
 # Restrict BMI values between 15 and 45
 BMI[BMI < 15] <- 15
 BMI[BMI > 45] <- 45
 
 # Systolic Blood Pressure (SBP)
 # Associated with both Age and BMI, plus random variation
 SBP <- round(
   80 +
     0.6 * Age +
     1.2 * BMI +
     rnorm(n, mean = 0, sd = 10)
 )
 
 # Restrict SBP values between 90 and 200 mmHg
 SBP[SBP < 90] <- 90
 SBP[SBP > 200] <- 200
 
 # Create data frame
 health_data <- data.frame(
   Patient_ID,
   Age,
   BMI,
   SBP
 )
 
 # View structure of dataset
 str(health_data)
 
 # Display first 6 observations
 head(health_data)
 
 # Summary statistics
 summary(health_data)