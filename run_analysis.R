## Neccessary Packages
library(plyr)
library(dplyr)


## create a folder for the data
if(!file.exists("./gettingcleaningdata")){dir.create("./gettingcleaningdata")}

## download the Data
url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./gettingcleaningdata/dataset.zip")
unzip("./gettingcleaningdata/dataset.zip", exdir = "./getcleandata")

## Reading Data

##Train Data
x_train <- read.table("./getcleandata/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./getcleandata/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./getcleandata/UCI HAR Dataset/train/subject_train.txt")

##Test Data
x_test <- read.table("./getcleandata/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./getcleandata/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./getcleandata/UCI HAR Dataset/test/subject_test.txt")

## features and activity Lables
activity_lables <- read.table("./getcleandata/UCI HAR Dataset/activity_labels.txt")
features <- read.table("./getcleandata/UCI HAR Dataset/features.txt")

## correcting Names of the variables
colnames(x_train) <- features[,2]
colnames(y_train) <- "activity_ID"
colnames(subject_train) <-"subject_ID"

colnames(x_test) <- features[,2]
colnames(y_test) <- "activity_ID"
colnames(subject_test) <- "subject_ID"

colnames(activity_lables)<- c("activity_ID", "activity_Type")

## Merge the data

train_all <- cbind(x_train, y_train, subject_train)
test_all <- cbind(x_test, y_test, subject_test)
data_all <- rbind(train_all, test_all)

## Extract only the mean and std-deviation for each measurement
mean_std_all<-data_all[,(grepl("activity_ID", names(data_all))| grepl("subject_ID", names(data_all))| grepl("mean",names(data_all))|grepl("std",names(data_all)))]

## Use descriptive acitvity Names

Subset_with_activity_Lables<-merge(mean_std_all, activity_lables, by="activity_ID")

## Labelling the data with descriptive variable names

names(Subset_with_activity_Lables)<-gsub("Acc", "Accelerometer", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("Gyro", "Gyroscope", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("BodyBody", "Body", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("Mag", "Magnitude", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("^t", "Time", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("^f", "Frequency", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("tBody", "TimeBody", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("-mean()", "Mean", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("-std()", "STD", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("-freq()", "Frequency", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("angle", "Angle", names(Subset_with_activity_Lables))
names(Subset_with_activity_Lables)<-gsub("gravity", "Gravity", names(Subset_with_activity_Lables))


## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## calculating the mean on subject_ID and activity_Type
tidyset<- aggregate(.~subject_ID + activity_Type, Subset_with_activity_Lables, mean)
## Ordering the data
tidyset <- tidyset[order(tidyset$subject_ID, tidyset$activity_Type), ]
## creating a table to .txt file
write.table(tidyset, "tidyset.txt", row.names = FALSE)


