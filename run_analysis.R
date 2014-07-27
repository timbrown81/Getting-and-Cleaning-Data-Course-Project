library(plyr)


##Merges the training and the test sets to create one data set.
##load & merge x train and test data
indata1 <- read.table("data/UCI HAR Dataset/train/X_train.txt")
indata2 <- read.table("data/UCI HAR Dataset/test/X_test.txt")
xdata <- rbind(indata1, indata2)

##load & merge y train and test data
indata1 <- read.table("data/UCI HAR Dataset/train/y_train.txt")
indata2 <- read.table("data/UCI HAR Dataset/test/y_test.txt")
ydata <- rbind(indata1, indata2)

##load & merge train and test subject data
subjecttrain <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
subjecttest <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
subjectdata <- rbind(indata1, indata2)


##load column labels, made sense to label the columns before filtering them
##features is datatable containing the desired column names we want
##activities is a datatable containing the exercise actrivities that we want
features <- read.table("data/UCI HAR Dataset/features.txt")
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt")

##Appropriately labels the data set with descriptive variable names. 
##name the columns in xdata using the column names we have in the features datatable
names(xdata) <- features[, 2]
## use the activities datatable to provide descriptive variable names in the ydata datatable
ydata[,1] = activities[ydata[,1], 2]
##name the activity column in our ydata datatable
names(ydata) <- "activity"
##name the subject column in our subjectdata datatable
names(subjectdata) <- "subject"


##Extracts only the measurements on the mean and standard deviation for each measurement. 
##goodcols
##goodx is a filtered dataset containing only columns with mean and std
goodcols <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
##use the goodcols to extract out just the columns we want, put that in the goodx datatable
goodx <- xdata[,goodcols]

cleandata <- cbind(subjectdata, ydata, goodx)
write.table(cleandata, "cleandata.txt")

##Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
##tidydata is the desired output and is built using the subject information, 
##   activity names and the filtered data containing mean & std

##tidydata <- ddply(result, .(subject), .fun=function(x){ colMeans(x[,3:60]) })

incleandata <- read.table("cleandata.txt")
tidydata <- aggregate(incleandata[3:68], by=list(incleandata$subject, incleandata$activity),FUN=mean, na.rm=TRUE)
write.table(tidydata, "tidydata.txt")

