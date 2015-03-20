---
title: "README"
author: "LN"
date: "Wednesday, March 18, 2015"
output: html_document

---


###Experimental design and background:
This is the course project for the Getting and Cleaning Data course in the Coursera Data Science Specialization.
The purpose of the assignment was to demonstrate the skills of downloading, manipulating and cleaning a data set to produce a tidy data set.  In addition, the skills of writing README and Codebook markdown files were also practiced. 

The objects of the course project:

-  create one R script called run_analysis.R that:
	-   merges the training and the test sets to create one data set 
	-   extracts only the measurements on the mean and standard deviation for each measurement 
	-   uses descriptive activity names to name the activities in the data set
	-   appropriately labels the data set with descriptive variable names
	-   from the data set in the above step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In addition to the script, the project required the creation and submission of a Codebook that describes the data and variables, and a README document that describes the process of cleaning the data and how the script works.

The data set for the project is data collected from the accelerometers from Samsung Galaxy 5 smartphones. A full 
description of the original data set is here:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition
+Using+Smartphones.  In brief, 3-axial linear acceleration and 3-axial angular velocity signals were captured on smartphones worn by a group of 30 volunteers who performed six activities.  The dataset was randomly partitioned into two sets, the training set which was made up of 70% of the volunteers, the remaining 30% made up the test set.     
        
###Processed data:
The script, 'run_analysis.R', was written to produce a tidy data set of the averages of each activity for each subject.  Please refer to the Codebook for a description of the raw data files and the variables of the finished tidy data set.  The data files are read into R.  The feature vector variables are assigned to the columns of the test and train datasets.  Descriptive name variables, 'subject'and 'activity_id', are assigned to the columns of the subject_test/train and y_test/train data sets.  The subject and activity (y_test or y_train) data columns are bound to the left sides of the respective test and train datasets using the cbind command.  The train dataset is combined with the test dataset using the rbind command. The train data set records are bound below the test records.  Symbols in the feature vector variables were removed and these variable names made into valid names in R, this simplifies downstream processing. Mean and std variables are selected out of the full data set creating a smaller data set with 68 variables.  During this subsetting process, the 'std' variables have been moved to the right side of the dataset.  Variables with "meanFreq" in their names are ignored, as are variables with 'gravity'(lower case) in their names.  Variables with 'Gravity' occurring in the name are kept. Descriptive names for activities are substituted for the numeric identifer. Lastly, the tidy data set, 'tidyset', is created by averaging each variable grouped by subject and activity.  The last line of code in the script writes the tidy data set to a text file for ease of uploading or sharing the dataset.  

###Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

