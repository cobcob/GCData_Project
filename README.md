GCData_Project
==============

Repo for the code associated with the Getting and Cleaning data coursera project

The script run_analysis.R must be run from the same directory as the folder named "UCI HAR Dataset" which contains the project data for test and train.

The script utilizes the following packages which must be installed in R to support the running of this script: 
1. dplyr
2. plyr
3. tidyr

The script works in the following manner: 
1. Read the test and train main data into tbl_df data frames.
2. Read the list of subjects that each row of data applies in both data sets.
3. Read the list of variable names from the features.txt
4. Generates a unique set of names from the list of variable names. 
5. These variable names are applied to the test and train data before merging the data sets.
6. Before merging the data sets, a variable named activity is added to each which contains the activity code.
7. The list of subjects that each row applies to is also added as a variable to each data set.
8. Using rbind one data set is generated and the workspace is cleaned of all other datasets.
9. The activity variable is converted to a factor and assigned the relevant description.
10. A subset of this dataframe is created (with 75 columns) using cbind and the select function from dplyr, the subset of data contains only the subject, activity, mean and SD columns (there are 73 columns containing either mean or SD).
11. Using tidyr a tidy set is created from the subset in step 11, the gather function is used to create a narrow dataset with 4 columns and gathers all observations into a signal/average pair except subject and activity.
12. Finally, the aggregate function is used to calculate the mean value for the average variable broken down by subject, activity and signal.
13. Before ending, the script cleans the workspace leaving just the tidy data set (tidySet) in memory and printing tidySet out to a text file in the same location as the script naming it "CourseProject_Tidy.txt"

