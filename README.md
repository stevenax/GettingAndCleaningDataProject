# Getting and Cleaning Data Coursera Course - Final Course Project

This is a submission for the Getting and Cleaning Data Coursera course final project.

The original data comes from the UCI Human Activity Recognition Using Smartphones Data Set and was taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on June 26, 2016. 'run_analysis.R' (described below) was run using R version 3.2.0.

## Files 

This dataset contains the following files:

* 'run_analysis.R' - R script that gets the dataset from the UCI source, cleans the data and creates 'fulldatatable.txt' and 'meantable.txt'
* 'fulldatatable.txt' - table combining all test and train data from the original data source selecting only mean, standard deviation and mean frequency data
* 'meantable.txt' - table summarizing 'fulldatatable.txt' by showing the mean of each measurement for each subject-activity pairing
* 'Codebook.md' - codebook describing the tables found in 'fulldatatable.txt' and 'meantable.txt'

## R Script

'run_analysis.R' (described above) does the following:

1. Downloads the dataset from the UCI source stated above if it does not exist in the working directory
2. Reads the activity labels, features, subject data, activity data and measurement data from the test and train datasets
3. Replaces the numbered activities in the test and train activity data with corresponding activity labels
4. Creates test and train tables by combining subject data, activity data and measurement tables
5. Removes columns from the test and train tables not pertaining to mean, standard deviation or mean frequency
6. Renames columns in the test and train tables with clean, descriptive names
7. Combines test and train tables and exports resulting table to 'fulldatatable.txt'
8. Creates table summarizing 'fulldatatable.txt' by showing the mean of each measurement for each subject-activity pairing and exports resulting table to 'meantable.txt'

## License

Use of the source dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
