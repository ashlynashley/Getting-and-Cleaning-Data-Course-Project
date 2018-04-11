### Getting and Cleaning Data - Week 4 Course Project

The purpose of this project is to collect, work with, and clean a data set from a zip folder from the following location:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The file was downloaded and loaded manually, rather than including this in the code.

## Key Files
* README.md - A description of the project
* CODEBOOK.md - A decription of the variables and data
* run_analysis.R - A file containing the code for this project
* week4Project_tidy - A .txt file which is the resulting data set from the run_analysis script

## Project Tasks
You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Code Procedure
The individual code listed in run_analysis.R is commented with short descriptions to explain the procedure
The result of run_analysis.R is a .txt file where the mean and standard deviation variables are grouped and averaged by subject (first) and activity (second)

The resulting file is listed above in Key Files [4]
