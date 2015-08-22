# run_analysis.R
#
# This file contain the main scripto to:
#
#   1. Merges the X data, y data and subject of each (train and test sets)    
#   2. Merges the training and the test sets to create one data set.
#   3. Extracts the measurements on the mean and standard deviation for each measurement.
#   4. Uses descriptive activity names to name the activities in the data set
#   5. Appropriately labels the data set with descriptive variable names. 
#
# In order to explicit in a simple way the steps to cleaning the data, only a 
# script is used, and functions was not considered for this task. Maybe in a refactoring
# step.

## Obtaining the name of the activities
activity.names <- read.table('UCI HAR Dataset/activity_labels.txt', col.names = c('Id', 'activity'))

## Obtainig an filtering the variables with '*mean()*' and '*std()*'
features.names <- read.table('UCI HAR Dataset/features.txt', col.names = c('Id', 'description'))
features.interest <- features.names[grepl("std\\(\\)|mean\\(\\)", features.names$description), 1]

## Load the train data
x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
s.train <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Load the test data
x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
s.test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Merge and cleaning the workspace
y.data <- rbind(y.train, y.test)
s.data <- rbind(s.train, s.test)
x.data <- rbind(x.train[ ,features.interest], x.test[ ,features.interest])

rm(x.train, y.train, s.train, x.test, y.test, s.test)

# Naming and factor the data of interest
colnames(x.data) <- features.names$description[features.interest]
activity <- factor(y.data[[1]], 1:6, labels= activity.names$activity)
subject <- factor(s.data$V1, 1:30)

# The frist tidy data
tidy.data <- cbind(activity, subject, x.data)
rm(y.data, s.data, x.data, activity, subject, activity.names, features.interest, features.names)

# Now creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.
library(reshape2) # Only for melt and cast
data.melted <- melt(tidy.data, c('activity', 'subject'))
tidy.final.data <- dcast(data.melted, activity + subject ~ variable, mean)
rm(data.melted)

#Save both tidy data frames in text archives
write.table(tidy.data, 'intermediate_tidy.txt', row.names = FALSE)
write.table(tidy.final.data, 'final_tidy.txt', row.names = FALSE)

# Remove the tidy.data from the Global Environmment
rm(tidy.data)

