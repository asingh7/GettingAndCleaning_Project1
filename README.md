# README - Getting and Cleaning Data Project 1     

## Objective
The objective is to is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Files
- run_analysis.R: Script to clean and prepare data
- tidyData.txt: Tidy data set after running script
- CodeBook.md: A code book that describes variables, data, and transformations
- UCI HAR Dataset: Folder containing the raw data

## Steps performed by run_analysis.R script

### 1. Merges the training and the test sets to create one data set.  
- Load the training and testing data sets
- Use rbind() to merge them into one data set    
     
### 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
- Read feature names
- Use grepl() to subset only feature names that have "mean()" or "std()"
- Subset the columns from combined data set using the selected feature names
- Read subjectID and add to the combined data set  
  
### 3. Use descriptive activity names to name the activities in the data set  
- Read and add activity ids to the data set.
- Merge data set with activity labels to add descriptive names.

### 4. Appropriately labels the data set with descriptive variable names.  
- sapply() function to column names of data set to convert them to be more descriptive

### 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
- Create groups corresponding to each combination of subject and activity
- Create a data set to store mean of each variable for each activity and each subject
  
  