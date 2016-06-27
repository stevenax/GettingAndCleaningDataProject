# This script downloads the UCI HAR Dataset, creates a table of all test and
# train mean and standard deviation data and creates a table of column means by 
# subject and activity to summarize the data

library(plyr)
library(reshape2)

# Get dataset file and extract data if file doesn't exist

zipfile <- "UCIHARdataset.zip"

if (!file.exists(zipfile)){
     fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
     download.file(fileURL, zipfile)
}  
if (!file.exists("UCI HAR Dataset")) { 
     unzip(zipfile) 
}

setwd("UCI HAR Dataset")

# Read activity labels, features and datasets

activityLabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subjectTest <- read.table("test/subject_test.txt")
subjectTrain <- read.table("train/subject_train.txt")
xTest <- read.table("test//X_test.txt")
xTrain <- read.table("train//X_train.txt")
yTest <- read.table("test//Y_test.txt")
yTrain <- read.table("train//Y_train.txt")

# Convert features and y datasets
features <- as.character(features[,2])
yTest <- as.factor(yTest[,1])
yTrain <- as.factor(yTrain[,1])

# Apply activity labels to the y datasets
levels(yTest) <- activityLabels[,2]
levels(yTrain) <- activityLabels[,2]

# Create test and train tables using subject, activity and x/y datasets
test <- cbind(subjectTest,yTest,xTest)
train <- cbind(subjectTrain,yTrain,xTrain)

# Rename test and train tables using the feature names
names(test) <- c("subject","activity", features)
names(train) <- c("subject","activity", features)

# Get only mean and st dev columns (keeping activity and subject columns)
test <- test[,c(1,2,grep("mean()|std()",names(test)))]
train <- train[,c(1,2,grep("mean()|std()",names(train)))]

# Combine test and train data, sorting by subject and activity
all <- rbind(test,train)
all <- arrange(all,subject,activity)

# Clean up column names
names(all) <- gsub("mean()","Mean",names(all))
names(all) <- gsub("std()","StDev",names(all))
names(all) <- gsub("meanFreq()","MeanFreq",names(all))
names(all) <- gsub("[()-]","",names(all))

# Using reshape2 library, create summary table showing means for each column 
# by subject and activity
meanTable <- melt(all, id = c("subject", "activity"))
meanTable <- dcast(meanTable, subject + activity ~ variable, mean)

# Export data table and summary table
write.table(all, "fulldatatable.txt", row.names = FALSE, quote = FALSE)
write.table(meanTable, "meantable.txt", row.names = FALSE, quote = FALSE)