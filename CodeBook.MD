---
title: "CodeBook"
author: "Tim Brown"
date: "Sunday, July 27, 2014"
output: html_document
---

This is the CodeBook for Coursera class project for Getting and Cleaning Data.  

The original data source is:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
A full description of the original data this work is derived from is located at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data has been downloaded and unziped into a subfolder under the project /data/data\UCI HAR Dataset.  Set the working directory as appropriate, and example follows:

```{r}
setwd("E:/Getting_Data/Getting-and-Cleaning-Data-Course-Project")
```


To run this solution set your working directory to be the directory you downloaded the project into.  To execute the script simply execute the following command from within RStudio: 

```{r}
source('run_analysis.R')
```


This script will read in the various datafiles, extract out just the columns containing mean or std data, add activity descriptors and subject identifier.  Once complete it will output the file into both txt and csv files.



The tidydata.txt file outputted has the following columns:


"subject"
"activity"
"tBodyAcc-mean()-X"          
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X"       
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-mean()-X"      
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X"         
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"     
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-mean()"         
"tBodyAccMag-std()"
"tGravityAccMag-mean()"
"tGravityAccMag-std()"       
"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"        
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()"
"tBodyGyroJerkMag-std()"     
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"          
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"           
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"      
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"       
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"         
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"          
"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"     
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()" 




