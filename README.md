Getting-and-Cleaning-Data-Course-Project
========================================

Course project assignment for Getting and Cleaning Data.

This github repository includes the data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data has been downloaded and unziped into a subfolder under the project /data/data\UCI HAR Dataset.  

To run this solution set your working directory to be the directory you downloaded the project into.  To execute the script simply execute the following command from within RStudio: source('run_analysis.R')

This script will read in the various datafiles, extract out just the columns containing mean or std data, add activity descriptors and subject identifier.  Once complete it will output the file into both txt and csv files.
