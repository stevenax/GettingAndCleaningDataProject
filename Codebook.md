# Code Book

This codebook describes the full data table found in 'fulldatatable.txt' and the summary table found in 'meantable.txt' created using the 'run_analysis.R file' running in R version 3.2.0.

The original data comes from the UCI Human Activity Recognition Using Smartphones Data Set and was taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on June 26, 2016.

## Variables

* subject -  Test subject ID
* activity - Activity performed by test subject when measurements were taken

## Activity Labels

The activity labels describe what activity the test subject was performing when measurements were taken.

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

## Measurements

The measurements in this database come from the accelerometer and gyroscope 3-axial raw signals (tAcc-XYZ and tGyro-XYZ), the body linear acceleration and angular velocity Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ), the magnitude of these signals (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, and tBodyGyroJerkMag), and the Fast Fourier Transform (FFT) of these signals (fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, and fBodyGyroJerkMag).
  
The set of variables that were estimated from these signals are: 

* Mean: Mean value
* StDev: Standard deviation
* MeanFreq- Weighted average of the frequency components to obtain a mean frequency

'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAccMeanX 
* tBodyAccMeanY 
* tBodyAccMeanZ
* tBodyAccStDevX
* tBodyAccStDevY
* tBodyAccStDevZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStDevX
* tGravityAccStDevY
* tGravityAccStDevZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStDevX
* tBodyAccJerkStDevY
* tBodyAccJerkStDevZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStDevX
* tBodyGyroStDevY
* tBodyGyroStDevZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStDevX
* tBodyGyroJerkStDevY
* tBodyGyroJerkStDevZ
* tBodyAccMagMean
* tBodyAccMagStDev
* tGravityAccMagMean
* tGravityAccMagStDev
* tBodyAccJerkMagMean
* tBodyAccJerkMagStDev
* tBodyGyroMagMean
* tBodyGyroMagStDev
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStDev
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStDevX
* fBodyAccStDevY
* fBodyAccStDevZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStDevX
* fBodyAccJerkStDevY
* fBodyAccJerkStDevZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY 
* fBodyGyroMeanZ 
* fBodyGyroStDevX
* fBodyGyroStDevY
* fBodyGyroStDevZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagStDev
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStDev
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStDev
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStDev
* fBodyBodyGyroJerkMagMeanFreq

## License

Use of the source dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
