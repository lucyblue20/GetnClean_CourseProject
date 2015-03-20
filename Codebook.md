---
title: "Codebook"
author: "LN"
date: "Thursday, March 19, 2015"
output: html_document

---
###Software and package versions:
RStudio R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

"downloader"package 0.3

"dplyr"package 0.4.1

"tidyr"package 0.2.0


###Script
run_analysis.R

This script cleans up the raw data, creating a tidy data set of the average of each variable for each activity and each subject.
###Raw data:
The raw data files used can be downloaded using this url:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The raw files are compressed and the "run_analysis.R" script will unzip them into a folder "UCI HAR Dataset" in your working directory. 

Files in the UCI HAR Dataset folder:

- 'README.txt'
- 'features_info.txt': information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Training subject labels
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/Inertial_test/': 9 files from angular and acceleration signals.  NOT USED IN THIS PROJECT.
- 'train/Inertial_train/': 9 files from angular and acceleration signals.  NOT USED IN THIS PROJECT.


###Tidy data set variables:
**subject:**  1-30, each row represents the subject who performed the experiment
        
**activity_id:**  6 total  walking, walking_upstairs, walking_downstairs, laying, standing, sitting

**Feature vector variables:** (listed below), 68 total, features are bounded within [-1,1].

For each **mean** and **standard deviation** (std) variable below (from the features_info.txt document): 

"the features selected come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

The acceleration signal was measured in standard gravity units 'g'.
The angular velocity vector measured by the gyroscope, units are radians/second. 


- tBodyAcc_mean_X
- tBodyAcc_mean_Y
- tBodyAcc_mean_Z
- tGravityAcc_mean_X
- tGravityAcc_mean_Y
- tGravityAcc_mean_Z
- tBodyAccJerk_mean_X
- tBodyAccJerk_mean_Y
- tBodyAccJerk_mean_Z
- tBodyGyro_mean_X
- tBodyGyro_mean_Y
- tBodyGyro_mean_Z
- tBodyGyroJerk_mean_X
- tBodyGyroJerk_mean_Y
- tBodyGyroJerk_mean_Z
- tBodyAccMag_mean
- tGravityAccMag_mean
- tBodyAccJerkMag_mean
- tBodyGyroMag_mean
- tBodyGyroJerkMag_mean
- fBodyAcc_mean_X
- fBodyAcc_mean_Y
- fBodyAcc_mean_Z
- fBodyAccJerk_mean_X
- fBodyAccJerk_mean_Y
- fBodyAccJerk_mean_Z
- fBodyGyro_mean_X
- fBodyGyro_mean_Y
- fBodyGyro_mean_Z
- fBodyAccMag_mean
- fBodyBodyAccJerkMag_mean
- fBodyBodyGyroMag_mean
- fBodyBodyGyroJerkMag_mean
- tBodyAcc_std_X
- tBodyAcc_std_Y
- tBodyAcc_std_Z
- tGravityAcc_std_X
- tGravityAcc_std_Y
- tGravityAcc_std_Z
- tBodyAccJerk_std_X
- tBodyAccJerk_std_Y
- tBodyAccJerk_std_Z
- tBodyGyro_std_X
- tBodyGyro_std_Y
- tBodyGyro_std_Z
- tBodyGyroJerk_std_X
- tBodyGyroJerk_std_Y
- tBodyGyroJerk_std_Z
- tBodyAccMag_std
- tGravityAccMag_std
- tBodyAccJerkMag_std
- tBodyGyroMag_std
- tBodyGyroJerkMag_std
- fBodyAcc_std_X
- fBodyAcc_std_Y
- fBodyAcc_std_Z
- fBodyAccJerk_std_X
- fBodyAccJerk_std_Y
- fBodyAccJerk_std_Z
- fBodyGyro_std_X
- fBodyGyro_std_Y
- fBodyGyro_std_Z
- fBodyAccMag_std
- fBodyBodyAccJerkMag_std
- fBodyBodyGyroMag_std
- fBodyBodyGyroJerkMag_std

Note: please refer to the "features_info.txt" and original "README.txt" documents of the raw data set for a detailed description.





