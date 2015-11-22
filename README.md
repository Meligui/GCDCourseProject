# GCDCourseProject
The course project for the Getting and Cleaning Data Coursera Course

##This repository contains two files as follows:
- run_analysis.R --> an R code that performs analysis on a set of data found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), to run the code you just need to make sure that the following files are in your working directory:
	- features.txt
	- activity_labels.txt
	- subject_test.txt
	- y_test.txt
	- X_test.txt
	- subject_train.txt
	- y_train.txt
	- X_train.txt
- code_book.md --> a code book describing all the variables in the resulting data file produced by the run_analysis code

The aim of the analysis carried out in run_analysis.R is to merge the available data in X_test.txt and X_train.txt a single table, providing it with descriptive column names and linking it with the subject and activity names data present in activity_labels.txt, subject_test.txt and subject_trial.txt.
The table is then modified to include only the variables that represent mean or standard deviation values
Following that the data is summarized so that the resulting data is a table containing the average value for each variable grouped by every subject and activity  
	
