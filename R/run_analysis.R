# 27122021
# Coursera: Getting and Cleaning data
# Week 4: Course Project

if(!exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "data/dataset.zip")
unzip("data/dataset.zip", exdir = "./data")

## library
library(dplyr)
library(data.table)

## reading features file
features <- read.table("data/UCI_HAR_Dataset/features.txt", header = FALSE)

## loading train data
feature.train <- read.table("data/UCI_HAR_Dataset/train/X_train.txt", header = FALSE)
activity.train <- read.table("data/UCI_HAR_Dataset/train/y_train.txt", header = FALSE)
subject.train <- read.table("data/UCI_HAR_Dataset/train/subject_train.txt", header = FALSE)


## loading test data
feature.test <- read.table("data/UCI_HAR_Dataset/test/X_test.txt", header = FALSE)
activity.test<- read.table("data/UCI_HAR_Dataset/test/y_test.txt", header = FALSE)
subject.test <- activity.Test<- read.table("data/UCI_HAR_Dataset/test/subject_test.txt", header = FALSE)

## rename the features data
names(feature.train) <- features$V2
names(feature.test) <- features$V2

## rename the activity data
names(activity.test) <- "activity"
names(activity.train) <- "activity"

## rename the subject data
names(subject.test) <- "subject"
names(subject.train) <- "subject"

## merging the data
testData <- cbind(subject.test, activity.test, feature.test)
trainData <- cbind(subject.train, activity.train, feature.train)
fullData <- rbind(testData, trainData)


## select only variables that match the mean and sd
matchVariables <- fullData %>% 
    select(1:2, matches("mean|std"))

## Use descriptive activity names to name the activities in the data set
activity_labels <- read.csv("data/UCI_HAR_Dataset/activity_labels.txt", header = FALSE,
                            sep = " ")
names(activity_labels) <- c("activity", "activityLabels")
descriptive.act.names <- activity_labels %>% 
    left_join(matchVariables) %>% 
    select(-1) %>% 
    relocate(subject, .before = activityLabels)


## giving variables descriptive names
names(descriptive.act.names) <- gsub(x = names(descriptive.act.names),
                                     pattern = "^t",
                                     replacement = "time")
names(descriptive.act.names) <- gsub(x = names(descriptive.act.names),
                                     pattern = "^f",
                                     replacement = "frequency")
names(descriptive.act.names) <- gsub(x = names(descriptive.act.names),
                                     pattern = "-",
                                     replacement = ".")

## create new independent tidy data set with the average of each variable for each
## activity and each subject
newTidyData <- descriptive.act.names %>% 
    group_by(subject, activityLabels) %>% 
    summarise_all(mean)

## write the new data set
write.table(newTidyData, "data/new_tidy_UCI_HAR_Dataset.txt", row.names = FALSE)
