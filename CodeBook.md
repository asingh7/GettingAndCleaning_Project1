# CodeBook - Getting and Cleaning Data Project 1 
  
## Course Project
The objective is to is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.  
  
## Source Files
The source files used to extract tidy data set under "UCI HAR Dataset" folder  

- train/X_train.txt: Training Dataset
- train/y_train.txt: Training Labels
- test/X_train.txt: Test Dataset
- test/y_test.txt: Test Labels
- features.txt: List of features
- subject_train.txt: Subjest performed training activity for each window sample
- subject_test.txt: Subject performed test activity for each window sample
- activity_labels.txt: 6 activities

## Data Dictionary for tidy set
- timeBodyAccmean_X: Mean time of Body Acceleration in the X direction
- timeBodyAccmean_Y: Mean time of Body Acceleration in the Y direction
- timeBodyAccmean_Z: Mean time of Body Acceleration in the Z direction
- timeBodyAccstd_X: Standard deviation time of Body Acceleration in the X direction
- timeBodyAccstd_Y: Standard deviation time of Body Acceleration in the Y direction
- timeBodyAccstd_Z: Standard deviation time of Body Acceleration in the Z direction
- timeGravityAccmean_X: Mean time of Gravity Acceleration in the X direction
- timeGravityAccmean_Y: Mean time of Gravity Acceleration in the Y direction
- timeGravityAccmean_Z: Mean time of Gravity Acceleration in the Z direction
- timeGravityAccstd_X: Standard deviation time of Gravity Acceleration in the X direction
- timeGravityAccstd_Y: Standard deviation time of Gravity Acceleration in the Y direction
- timeGravityAccstd_Z: Standard deviation time of Gravity Acceleration in the Z direction
- timeBodyAccJerkmean_X: Mean time of Jerk signal of Body Acceleration in the X direction
- timeBodyAccJerkmean_Y: Mean time of Jerk signal of Body Acceleration in the Y direction
- timeBodyAccJerkmean_Z: Mean time of Jerk signal of Body Acceleration in the Z direction
- timeBodyAccJerkstd_X: Standard deviation time of Jerk signal of Body Acceleration in the X direction
- timeBodyAccJerkstd_Y: Standard deviation time of Jerk signal of Body Acceleration in the Y direction
- timeBodyAccJerkstd_Z: Standard deviation time of Jerk signal of Body Acceleration in the Z direction
- timeBodyGyromean_X: Mean time of Body Gyro in the X direction
- timeBodyGyromean_Y: Mean time of Body Gyro in the Y direction
- timeBodyGyromean_Z: Mean time of Body Gyro in the Z direction
- timeBodyGyrostd_X: Standard deviation time of Body Gyro in the X direction
- timeBodyGyrostd_Y: Standard deviation time of Body Gyro in the Y direction
- timeBodyGyrostd_Z: Standard deviation time of Body Gyro in the Z direction
- timeBodyGyroJerkmean_X: Mean time of Jerk signal of Body Gyro in the X direction
- timeBodyGyroJerkmean_Y: Mean time of Jerk signal of Body Gyro in the Y direction
- timeBodyGyroJerkmean_Z: Mean time of Jerk signal of Body Gyro in the Z direction
- timeBodyGyroJerkstd_X: Standard deviation time of Jerk signal of Body Gyro in the X direction
- timeBodyGyroJerkstd_Y: Standard deviation time of Jerk signal of Body Gyro in the Y direction
- timeBodyGyroJerkstd_Z: Standard deviation time of Jerk signal of Body Gyro in the Z direction
- timeBodyAccMagmean: Mean of 3-dimensional magnitude of time of Body Acceleration
- timeBodyAccMagstd: Standard deviation of 3-dimensional magnitude of time of Body Acceleration 
- timeGravityAccMagmean: Mean of 3-dimensional magnitude of time of Gravity Acceleration
- timeGravityAccMagstd: Standard deviation of 3-dimensional magnitude of time of Gravity Acceleration 
- timeBodyAccJerkMagmean: Mean of 3-dimensional magnitude of time of Jerk signal of Body Acceleration
- timeBodyAccJerkMagstd: Standard deviation of 3-dimensional magnitude of time of Jerk signal of Body Acceleration
- timeBodyGyroMagmean: Mean of 3-dimensional magnitude of time of Body Gyro
- timeBodyGyroMagstd: Standard deviation of 3-dimensional magnitude of time of Body Gyro
- timeBodyGyroJerkMagmean: Mean of 3-dimensional magnitude of time of Jerk signal of Body Gyro
- timeBodyGyroJerkMagstd: Standard deviation of 3-dimensional magnitude of time of Jerk signal of Body Gyro
- frequencyBodyAccmean_X: Mean frequency of Body Acceleration in the X direction
- frequencyBodyAccmean_Y: Mean frequency of Body Acceleration in the Y direction
- frequencyBodyAccmean_Z: Mean frequency of Body Acceleration in the z direction
- frequencyBodyAccstd_X: Standard deviation frequency of Body Acceleration in the X direction
- frequencyBodyAccstd_Y: Standard deviation frequency of Body Acceleration in the Y direction
- frequencyBodyAccstd_Z: Standard deviation frequency of Body Acceleration in the Z direction
- frequencyBodyAccJerkmean_X: Mean frequency of Jerk signal of Body Acceleration in the X direction
- frequencyBodyAccJerkmean_Y: Mean frequency of Jerk signal of Body Acceleration in the Y direction
- frequencyBodyAccJerkmean_Z: Mean frequency of Jerk signal of Body Acceleration in the Z direction
- frequencyBodyAccJerkstd_X: Standard deviation frequency of Jerk signal of Body Acceleration in the X direction
- frequencyBodyAccJerkstd_Y: Standard deviation frequency of Jerk signal of Body Acceleration in the Y direction
- frequencyBodyAccJerkstd_Z: Standard deviation frequency of Jerk signal of Body Acceleration in the Z direction
- frequencyBodyGyromean_X: Mean frequency of Body Gyro in the X direction
- frequencyBodyGyromean_Y: Mean frequency of Body Gyro in the Y direction
- frequencyBodyGyromean_Z: Mean frequency of Body Gyro in the Z direction
- frequencyBodyGyrostd_X: Standard deviation frequency of Body Gyro in the X direction 
- frequencyBodyGyrostd_Y: Standard deviation frequency of Body Gyro in the Y direction
- frequencyBodyGyrostd_Z: Standard deviation frequency of Body Gyro in the Z direction
- frequencyBodyAccMagmean: Mean of 3-dimensional magnitude of frequency of Body Acceleration
- frequencyBodyAccMagstd: Standard deviation of 3-dimensional magnitude of frequency of Body Acceleration
- frequencyBodyBodyAccJerkMagmean: Mean of 3-dimensional magnitude of frequency of Jerk signal of Body Acceleration
- frequencyBodyBodyAccJerkMagstd: Standard deviation of 3-dimensional magnitude of frequency of Jerk signal of Body Acceleration
- frequencyBodyBodyGyroMagmean: Mean of 3-dimensional magnitude of frequency of Body Gyro
- frequencyBodyBodyGyroMagstd: Standard deviation of 3-dimensional magnitude of frequency of Body Gyro
- frequencyBodyBodyGyroJerkMagmean: Mean of 3-dimensional magnitude of frequency of Jerk signal of Body Gyro
- frequencyBodyBodyGyroJerkMagstd: Standard deviation of 3-dimensional magnitude of frequency of Jerk signal of Body Gyro
- group: Group defining Subject and Activity  
