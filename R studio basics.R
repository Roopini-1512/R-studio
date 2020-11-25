###===================================================================================================###
###                                     Introduction to R                                          ###
###                                         MODULE 1                                          ###
###                                    [DATA AND VECTORS]                                             ###                
###===================================================================================================###
#1. READING THE CARS.CSV DATA IN R
#=======================================================================================================

getwd()                                 #get the working directory
he working directory
cars = read.csv("cars.csv")             #read the data


#========================================================================================================
#2. SOME INITIAL STEPS WITH DATA
#========================================================================================================
#A. Checking the dimension of the data
     dim(cars)

#B. Number of rows of the data
     nrow(cars)

#C. Number of columns of the data
    ncol(cars)

#D. Studying the Structure of the data
   str(cars)

#E. Printing first and last few lines of a data
   head(cars)
   tail(cars)

#F. Viewing the entire data
   View(cars)


#========================================================================================================
#3. INTRODUCTION TO VECTORS
#========================================================================================================

v <- 5 #assignment symbol
v+1


#A. Defining a vector

x <- c(12,34,24,45,7,18) # c stands for combine
x

#B. Generating regular sequences - The colon [:] operator
30:50
50:30

#C. Generating regular sequences - The seq() function
seq(1,20,3)
seq(0,1,length.out =10)

#D. Regenerating simple random sample
sample(1:10,3, replace = TRUE)
sample(1:10,3, replace = FALSE)
?sample

#probability sampling
sample(0:1, 10, replace=T, prob=c(0.2,0.8))
sample(0:1, 10, replace=T, prob=c(0.3,0.7))

#========================================================================================================
#4. SOME USEFUL FUNCTIONS
#========================================================================================================

#A. sum()
 sum(cars$dist)

#B. mean(), median(), sd(), var()
    mean(cars$speed)
    median(cars$speed)
    sd(cars$speed)
    var(cars$speed)

#C. max(), min()
    max(cars$dist)
    min(cars$dist)

#D. quantile()
    quantile(cars$speed)

#E. length()
    length(cars)

#F. summary
    summary(cars)



#========================================================================================================
#5. VECTOR SUBSETTING
#========================================================================================================


#The conditional operators

# > is greater than
# < is less than
# == is equal to
# <= is less than or equal to
# >= is greater than or equal to

x
x > 20
x == 24


#and - &
#or - |

(x>30 | x<10)
(x<30 & x >10)


#PROBLEM:
#Consider the following two vectors

x <- c(33,45,23,67,54,48)
y <- c(108,151,164,119,135,122)

x
y


#Write a R code to find the folowing solutions
# a. Vaues of x that are less than 35
v <- x<35
v

# b. The number of observations in y that are more than 150
x[x<50]

# c. The number of observations in y that are between 120 and 165
x[x<50]
length(x[x<50])

sum(x[x<50])
# d. The vaues in x that are less than 30 or greater than 50
x[x<50|x>30]


# e. The values in x for which the values in y is less than or equal to 120
x[y<=120]


# f. The values in y for which the values in x is equal to 45
y[x==45]



#========================================================================================================
#6. VECTORS IN DATA
#========================================================================================================

#Note that in a data set each rows or columns is nothing but a vector
#A variable in data can be extracted as follows:






#PROBLEM (Reference: cars.csv)

# a. Which car has the highest mpg?


# b. Which car is the heaviest?



# c. Which car is the lightest?



# d. Which car has the highest value of the horsepower?



# e. What is the lowest value of the horsepower?
 min(cars$Horsepower)


# f. What is the highest values of the mpg?
 max(cars$MPG)


# g. List the top 10 percentile values of mpg.



# h. List the name of cars which has mileage between 25 and 35 mpg.



# i. What is the average weight of the cars which has 8 cylinders?



# j. What is the average weight of the cars that are originated in Japan?



# k. Randomly select 20 cars from the given list of cars.












