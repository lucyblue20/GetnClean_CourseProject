
## Load required packages into R

library(downloader)
library(dplyr) 
library(tidyr)


##Download and unzip the compressed data files

url<-("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ")
download(url, dest="dataset.zip", mode="wb") 
unzip ("dataset.zip")


##Read files for test and train data sets into R

testdata<-read.table('UCI HAR Dataset/Test/X_test.txt')  
traindata<-read.table('UCI HAR Dataset/Train/X_train.txt')


## Read feature, subject id, activity id files into R

activity<-read.table('UCI HAR Dataset/activity_labels.txt') 
features<-read.table('UCI HAR Dataset/features.txt')
subject_test<-read.table('UCI HAR Dataset/test/subject_test.txt')
y_test<-read.table('UCI HAR Dataset/test/y_test.txt')
subject_train<-read.table('UCI HAR Dataset/train/subject_train.txt')
y_train<-read.table('UCI HAR Dataset/train/y_train.txt')


#  Naming and renaming columns:  assign variable names to data set columns 

names(testdata)<-features[,2]
names(traindata)<-features[,2]

names(subject_test)<-"subject"
names(subject_train)<-"subject"
names(y_test)<-"activity_id"
names(y_train)<-"activity_id"


## add subject and activity id data cloumns to left side of data frame 'testdata'

testdata<- cbind(subject_test,y_test,testdata) 


## add subject and activity id data columns to left side of data frame 'traindata'

traindata<-cbind(subject_train,y_train,traindata) 


## Combine the test and train datasets together using rbind to create the full data set

fulldata<-rbind(testdata, traindata)


##clean up the column names to remove symbols and ensure the column names are valid names in R

names(fulldata) <- gsub("\\()","",names(fulldata))
names(fulldata)<-gsub("-","_",names(fulldata))
valid_column_names <- make.names(names=names(fulldata), unique=TRUE, allow_ = TRUE)
names(fulldata) <- valid_column_names


## select only columns with mean and stddev data

mean.std.data <-  select(fulldata,subject,activity_id,contains("mean",ignore.case=TRUE),
                         -contains("meanFreq",ignore.case=TRUE),
                         contains("std",ignore.case=TRUE),
                         -contains("gravity",ignore.case=FALSE))


## add descriptive activity labels to replace activity codes in column 'activity_id'

mean.std.data$activity_id <- gsub("1", "walking", mean.std.data$activity_id) 
mean.std.data$activity_id <- gsub("2", "walking_upstairs", mean.std.data$activity_id) 
mean.std.data$activity_id <- gsub("3", "walking_downstairs", mean.std.data$activity_id) 
mean.std.data$activity_id <- gsub("4", "sitting", mean.std.data$activity_id) 
mean.std.data$activity_id <- gsub("5", "standing", mean.std.data$activity_id) 
mean.std.data$activity_id <- gsub("6", "laying", mean.std.data$activity_id) 


##  Reduce the mean.std.data set to a tidy dataset of mean values for each 
##  variable grouped by subject and activity

tidyset<-mean.std.data %>%
        group_by(subject,activity_id) %>%
        summarise_each(funs(mean))


## to allow the sharing of the tidy data set, it is written to a text file for easy uploading

write.table(tidyset,".\\tidyset.txt",row.name=FALSE)




