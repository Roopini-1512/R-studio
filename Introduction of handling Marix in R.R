###===================================================================================================###
###                                     INTRODUCTION TO R                                           ###
###                                         MODULE 2                                         ###
###                                    [DATA AND MATRIX]                                              ###                
###========
#1. INTRODUCTION TO MATRIX
#=======================================================================================================

#Consider the following two vectors

x <- c(33,45,23,67,54,48)
y <- c(108,151,164,119,135,122)


#A. The cbind() function
    cbind(x,y)

#B. The rbind() function
    rbind(x,y)


#C. The matrix() function
     matrix(x,nrow=2,ncol=2)





#=======================================================================================================
#2. MATRIX AND DATA FRAME
#=======================================================================================================

#A Limitation of Matrix and Vector is that it can store only one type of data

#Consider another vector
z <- c("P","T","M","K","H","R")
cbind(x,y)
cbind(x,y,z)


#PROBLEM
#Constructing the following data

### X1	X2	X3	Age	Gender
### 27	40	A	  23	Male
### 39	20	A	  22	Female
### 22	24	B	  50	Female
### 33	32	C	  38	Male
### 30	32	B	  22	Male
### 44	31	B	  43	Male
### 41	22	C	  37	Female
### 35	28	A	  45	Male
### 44	20	C	  20	Female
### 21	46	B	  36	Male


data.frame(x,y,z)


#=======================================================================================================
#3. MATRIX SUBSETTING
#=======================================================================================================

#PROBLEM

#Consider the following matrix: 
### 38	33	47
### 29	48	35
### 21	34	47
### 38	44	21
### 28	26	43


#a)	Generate the above matrix in R and store it in an object.
mat <- matrix(c(38,33,47,
                29,48,35,
                21,34,47,
                38,44,21,
                28,26,43), nrow=5, ncol=3, byrow=T)

mat

#b) Check the dimenison of the matrix
dim(mat)


#c)	Print the first element of the matrix.
mat[1]


#d)	Print the last element of the matrix.
mat[5,3]


#e)	Print the values of the first row.
mat[1,]


#f)	Print the values of the fourth row.
mat[4,]


#g)	Print the values first column.
mat[,1]


#h)	Calculate the total of the third row.
sum(mat[3,])


#i)	Calculate the total of the fifth row.
sum(mat[5,])


#j)	Calculate the total of the second column.
sum(mat[,2])


#k)	Calculate the average of the values of the first row.
mean(mat[1,])


#l)	Replace the first value of the matrix by 50.
mat[1,1]= 50
mat
#m)	Replace the last value of the matrix by 30.
mat[5,3] = 30
mat

#n)	Replace the first column of the matrix by the vector (20,30,20,30,20)
mat[,1] = c(20,30,20,30,20)
mat


#o)	Print all the values corresponding to 4th & 5th rows and 2nd & 3rd column.
mat[c(4,5),c(2,3)]


#p)	Replace the matrix obtained above by the matrix
### 38	31
### 20	20
mat[c(4,5),c(2,3)] = matrix(c(38,30,31,20),2,2)
mat

