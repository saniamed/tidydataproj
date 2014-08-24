
#getwd()
#setwd("C:/Users/Sania/Documents/03 Getting and Cleaning Data/course proj/data")

# this code assumes data is already in the working directory
# data has the following sub-directories:
#   -- train
#   -- test

#--------------------------------------------------
# Read the training data
#--------------------------------------------------


# read subject ids for the training data
Subj <- read.table('train/subject_train.txt')
names(Subj) <- "sub_id"
head(Subj)

# read training data set
X_train <- read.table('train/X_train.txt')
dim(x)
X_train$sub_id <- Subj$sub_id
#observing data 
#head(X_train)


# read training labels
Y_train <- read.table('train/Y_train.txt')
dim(Y_train)
#head(Y_train)
#assign activity label to the activity column
names(Y_train) <- "activity"
X_train$activity <- Y_train$activity
#head(X_train)
dim(X_train)

#-----------------------------------------------
# Read Test data
#-----------------------------------------------
 
        
# read subject ids for testing data        
subj_test <- read.table('test/subject_test.txt')
names(subj_test) <- "sub_id"

# read testing data set
X_test <- read.table('test/X_test.txt')
head(X_test)
X_test$sub_id <- subj_test$sub_id


# read testing labels
Y_test <- read.table('test/y_test.txt')
head(Y_test)
names(Y_test) <- "activity"
X_test$activity <- Y_test$activity
dim(X_test)

#-----------------------------------------
# Combine test and training data
#-----------------------------------------

full_data <- rbind(X_train,X_test)

write.table(full_data,"step1_full_data.txt",col.names=T,row.names=T)


#------------------------------------------------
 # assign  descriptive variable names to data 
#------------------------------------------------

variable_id <- read.table("features.txt",colClasses="character")
#head(variable_id)

names(full_data) <- c(variable_id$V2,"sub_id","activity")
names(full_data)
# editing variable names
newnames <- tolower(names(full_data))
newnames <- gsub("[-(),]","",newnames)
names(full_data) <- newnames

#--------------------------------------------------
# Extracting mean and standard deviation columns
#--------------------------------------------------

summarycol <- grep("mean|std", names(full_data))


summarycol <- c(summarycol,562:563)
summ_data <- full_data[,summarycol]

#-----------------------------------------------
# assign descriptive activity labels
#-----------------------------------------------

actlab <- read.table("data/activity_labels.txt",colClasses="character")
summ_data$act2 <- factor(summ_data$activity,levels=1:6,labels=actlab$V2)
summ_data$activity <- summ_data$act2
# drop act2 which is duplicate of activity
summ_data <- summ_data[,c(1:length(names(summ_data))-1)] 

#-----------------------------------------------
# Making tidy data set by computing means of all
#variables for each subject and activity
#-----------------------------------------------

library(reshape2)

mdata <- melt(summ_data,id=c("sub_id","activity"))
#tidy_mean <- dcast(mdata,sub_id+activity ~ variable,mean) 
# ignore NA values in mean computation
tidy_data <- dcast(mdata,sub_id+activity ~ variable,
               function(x){mean(x,na.rm=T)}) 

#-------------------------------------------------
# writing tidy data as a text file
#-------------------------------------------------
write.table(tidy_data, "tidy_data.txt", col.names=T, row.names=F)
tidy_data2 <- read.table("tidy_data.txt",header=T)
