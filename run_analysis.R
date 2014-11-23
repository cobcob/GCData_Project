library(dplyr)
library(plyr)

## Merge the data sets 

#Read in test and train X data and convert to tbl_df
train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
train <- tbl_df(train)
test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
test <- tbl_df (test)
#Read in the subject data for test and train
subjectsTest <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
subjectsTrain <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")

#Read in features.txt which contains the column names for the data
features <-  read.table (".\\UCI HAR Dataset\\features.txt")
#As many of the names repeat use the make.names function to generate a unique set of names
uniqueNames <- unique (make.names(features$V2,unique=TRUE)) 
#Assign column names to test and train data - this addresses question 4 of the assignment
names(test) <- uniqueNames 
names(train) <- uniqueNames 

#Read in test and train label into their own dataset and name the column activity
trainLabels <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
testLabels <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
names(trainLabels) <- "activity"
names(testLabels) <- "activity"

#Add new activity variable into the train and test data sets (this is still a number to denote the activity, numbers will be replaced with descriptive names later)
train$activity <- trainLabels$activity
test$activity <- testLabels$activity

#Add new variable into the train and test data sets to denote the data source in case it is required.
train$source <- "train"
test$source <- "test"

#Add the subject variable into the dataset to prepare for Q5
train$subject <- subjectsTrain$V1
test$subject <- subjectsTest$V1

#The test and train datasets are now ready to be merged into one dataset
#rbind the datasets together into one large set to answer question 1 of the assignment.
oneset <- rbind(test, train)

#Cleanup the workspace by removing the temporary datasets
rm(train)
rm(test)
rm(features)
rm(trainLabels)
rm(testLabels)
rm(subjectsTest)
rm(subjectsTrain)
rm(uniqueNames)

#Question 3 - in order to replace the activity numeric variable with a descriptive name, start by making the activity variable a factor
oneset$activity <- as.factor(oneset$activity)
#Read in activity labels to provide useful column names
activityLabels <- read.table (".\\UCI HAR Dataset\\activity_labels.txt")
names(activityLabels) <- c("ID", "Activity")
activityLabels <- tbl_df(activityLabels)
#update the factor names to the activity names instead of numbers
levels(oneset$activity) <- activityLabels$Activity

rm(activityLabels)

#Question 2 - only select the column names which contain "mean." or "std." for the new dataset. This ensures to filter out all other columns
#Also include the subject, activity at the start of this dataset
meanSDset <- cbind ( select (oneset, subject, activity),select (oneset, contains("mean.")), select (oneset, contains("std.")) )
meanSDset <- tbl_df(meanSDset)

#Question 5 - now create a new tidy data set
library(tidyr)
#Use gather from tidyr to gather the data set into a narrow form broken down by the subject and activity
tidySet <- gather(meanSDset,signal, average, -subject, -activity)
#consolidate the data into the average signal value broken down by activity and subject
tidySet <- aggregate(average ~ subject + activity + signal, data=tidySet, mean)

#Clean the workspace, leaving just TidySet in the workspace once the script is completed.
rm(meanSDset)
rm(oneset)

#Print the tidy set for submission as a text file
write.table(tidySet, file ="CourseProject_Tidy.txt", row.names = FALSE)