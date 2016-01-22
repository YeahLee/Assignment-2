#' ---
# title: Assignment 2 
# author: "Ye Li"
# date: "Winter 2016"
# assignment: https://github.com/EconomiCurtis/econ294_2015/blob/master/Assignments/Econ_294_Assignment_2.pdf
# ---



# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Question 0

YeLiAssignment2 <- list(
  firstName = "Ye",
  lastName  = "Li",
  email     = "yli247@ucsc.edu",
  studentID = 1505112
)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Question 1

diamonds <- get(
  load(
    file = url(
      "https://github.com/EconomiCurtis/econ294_2015/raw/master/data/diamonds.RData"
    )
  )
)


YeLiAssignment2$s1a <- nrow(diamonds)
YeLiAssignment2$s1b <- ncol(diamonds)
YeLiAssignment2$s1c <- names(diamonds)
YeLiAssignment2$s1d <- summary(diamonds$price)


print(paste("the number of observation is",YeLiAssignment2$s1a))
print(paste("the number of columns is",YeLiAssignment2$s1b))
print(paste("the header names are",list(YeLiAssignment2$s1c)))
print(YeLiAssignment2$s1d)


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Question 2
diamonds2<-read.table(
  file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt", 
  header=TRUE)

#number of observation
YeLiAssignment2$s2a <- nrow(diamonds2)
#number of columns
YeLiAssignment2$s2b <- ncol(diamonds2)
#the header names
YeLiAssignment2$s2c <- names(diamonds2)
#mean of weight
YeLiAssignment2$s2d <- mean(diamonds2$weight)
#median of weight
YeLiAssignment2$s2e <- median(diamonds2$weight)
#histogram of weight
hist(diamonds2$weight)
#table of weight
table(diamonds2$weight)

#create new variable of weight that if the weight is 996 or 999, set it to NA
diamonds2$NewWeight<-ifelse(diamonds2$weight==996|diamonds2$weight==999,NA,diamonds2$weight)
#the new mean of weight
YeLiAssignment2$s2f <- mean(diamonds2$NewWeight,na.rm=T)
#the new median of weight
YeLiAssignment2$s2g <- median(diamonds2$NewWeight,na.rm=T)
#histogram of NewWeight
hist(diamonds2$NewWeight)
#table of NewWeight
table(diamonds2$NewWeight)

#summary of weights for man with NA
dmale<-subset(diamonds2,(SEX==1))
YeLiAssignment2$s2h <-summary(dmale$NewWeight) 
#summary of weights for woman with NA
dfemale<-subset(diamonds2,(SEX==2))
YeLiAssignment2$s2i <- summary(dfemale$NewWeight)


#print out the output
print(paste("the number of observation is",YeLiAssignment2$s2a))
print(paste("the number of columns is",YeLiAssignment2$s2b))
print(paste("the header names are",list(YeLiAssignment2$s2c)))
print(paste("the mean of weight is",YeLiAssignment2$s2d))
print(paste("the median of weight is",YeLiAssignment2$s2e))
print(paste("the new mean of weight is",YeLiAssignment2$s2f))
print(paste("the new median of weight is",YeLiAssignment2$s2g))
print(YeLiAssignment2$s2h)
print(YeLiAssignment2$s2i)

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Question 3

#Extract even index values from vec
vec <- c(letters,LETTERS)
length(vec)
YeLiAssignment2$s3a<-vec[seq(2,52,2)]
print(YeLiAssignment2$s3a)

#Extract my name(my first name just contains 2 letters)
YeLiAssignment2$s3b<- paste(vec[c(51,5)], collapse="")
print(YeLiAssignment2$s3b)

#Extract the first column from the second matrix of arr 
arr <- array( c(letters,LETTERS), dim = c(3,3,3))
YeLiAssignment2$s3c<-arr[,1,2]
print(YeLiAssignment2$s3c)

#Extract the middle values from each of the three matrices in arr 
YeLiAssignment2$s3d<-arr[2,2,]
print(YeLiAssignment2$s3d)

#Extract values from arr, spell the first three letters of your first name


YeLiAssignment2$s3e<-paste(arr[1,3,3],arr[2,2,1], sep = "")
print(YeLiAssignment2$s3e)

#save as RData
save(YeLiAssignment2,
  file = "/Users/liye/Documents/Graduate/UCSC/Academic/Winter/294lab/2/YeLiAssignment2.RData")
# END
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
