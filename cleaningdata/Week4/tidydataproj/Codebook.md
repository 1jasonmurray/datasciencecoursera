<p align="center">#Tidied UCI HAR Dataset</p>
##Introduction
The following data set was obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
The test and training data provided was combined into a single dataset.  Then only the mean and standard deviation for each measurment were filtered out.  Creating the tidyUCIdata set.  The means for each variable was then calculated by subject and activity.  These are stored in tidyUCIdataMeans.  The same variable names are used in both sets of data but in the tidyUCIdataMeans all variables represent the means of the variables from the original set of data.  

##Features  
Full information about each variable and how it was obtained can be found in the features.txt file which was included with the original data set.   

##Variables  
All variables are normalized and bounded within [-1,1].  
  
tBodyAcc_mean_X        range = [-1,1]  
Mean value of body acceleration in the X direction  
  
tBodyAcc_mean_Y		range = [-1,1]  
Mean value of body acceleration in the Y direction  
  
tBodyAcc_mean_Z		range = [-1,1]  
Mean value of body acceleration in the Z direction  
  
tBodyAcc_std_X		range = [-1,1]    
Standard deviation of body acceleration in the X direction  
  
tBodyAcc_std_Y		range = [-1,1]   
Standard deviation of body acceleration in the Y direction  
  
tBodyAcc_std_Z		range = [-1,1]    
Standard deviation of body acceleration in the Z direction  
  
tGravityAcc_mean_X		range = [-1,1]    
Mean value of gravity acceleration in the X direction  
  
tGravityAcc_mean_Y		range = [-1,1]  
Mean value of gravity acceleration in the Y direction  
  
GravityAcc_mean_Z		range = [-1,1]  
Mean value of gravity acceleration in the Z direction  
  
tGravityAcc_std_X		range = [-1,1]  
Standard deviation of gravity acceleration in the X direction  
  
tGravityAcc_std_Y		range = [-1,1]  
Standard deviation of gravity acceleration in the Y direction  
  
tGravityAcc_std_Z		range = [-1,1]  
Standard deviation of gravity acceleration in the Z direction  

tBodyAccJerk_mean_X		range = [-1,1]
tBodyAccJerk_mean_Y		range = [-1,1]
tBodyAccJerk_mean_Z		range = [-1,1]
tBodyAccJerk_std_X		range = [-1,1]
tBodyAccJerk_std_Y		range = [-1,1]
tBodyAccJerk_std_Z		range = [-1,1]
tBodyGyro_mean_X		range = [-1,1]
tBodyGyro_mean_Y		range = [-1,1]
tBodyGyro_mean_Z		range = [-1,1]
tBodyGyro_std_X		range = [-1,1]
tBodyGyro_std_Y		range = [-1,1]
tBodyGyro_std_Z		range = [-1,1]
tBodyGyroJerk_mean_X		range = [-1,1]
tBodyGyroJerk_mean_Y		range = [-1,1]
tBodyGyroJerk_mean_Z		range = [-1,1]
tBodyGyroJerk_std_X		range = [-1,1]
tBodyGyroJerk_std_Y		range = [-1,1]
tBodyGyroJerk_std_Z		range = [-1,1]
tBodyAccMag_mean		range = [-1,1]
tBodyAccMag_std		range = [-1,1]
tGravityAccMag_mean		range = [-1,1]
tGravityAccMag_std		range = [-1,1]
tBodyAccJerkMag_mean		range = [-1,1]
tBodyAccJerkMag_std		range = [-1,1]
tBodyGyroMag_mean		range = [-1,1]
tBodyGyroMag_std		range = [-1,1]
tBodyGyroJerkMag_mean		range = [-1,1]
tBodyGyroJerkMag_std		range = [-1,1]
fBodyAcc_mean_X		range = [-1,1]
fBodyAcc_mean_Y		range = [-1,1]
fBodyAcc_mean_Z		range = [-1,1]
fBodyAcc_std_X		range = [-1,1]
fBodyAcc_std_Y		range = [-1,1]
fBodyAcc_std_Z		range = [-1,1]
fBodyAcc_meanFreq_X		range = [-1,1]
fBodyAcc_meanFreq_Y		range = [-1,1]
fBodyAcc_meanFreq_Z		range = [-1,1]
fBodyAccJerk_mean_X		range = [-1,1]
fBodyAccJerk_mean_Y		range = [-1,1]
fBodyAccJerk_mean_Z		range = [-1,1]
fBodyAccJerk_std_X		range = [-1,1]
fBodyAccJerk_std_Y		range = [-1,1]
fBodyAccJerk_std_Z		range = [-1,1]
fBodyAccJerk_meanFreq_X		range = [-1,1]
fBodyAccJerk_meanFreq_Y		range = [-1,1]
fBodyAccJerk_meanFreq_Z		range = [-1,1]
fBodyGyro_mean_X		range = [-1,1]
fBodyGyro_mean_Y		range = [-1,1]
fBodyGyro_mean_Z		range = [-1,1]
fBodyGyro_std_X		range = [-1,1]
fBodyGyro_std_Y		range = [-1,1]
fBodyGyro_std_Z		range = [-1,1]
fBodyGyro_meanFreq_X		range = [-1,1]
fBodyGyro_meanFreq_Y		range = [-1,1]
fBodyGyro_meanFreq_Z		range = [-1,1]
fBodyAccMag_mean		range = [-1,1]
fBodyAccMag_std		range = [-1,1]
fBodyAccMag_meanFreq		range = [-1,1]
fBodyBodyAccJerkMag_mean		range = [-1,1]
fBodyBodyAccJerkMag_std		range = [-1,1]
fBodyBodyAccJerkMag_meanFreq		range = [-1,1]
fBodyBodyGyroMag_mean		range = [-1,1]
fBodyBodyGyroMag_std		range = [-1,1]
fBodyBodyGyroMag_meanFreq		range = [-1,1]
fBodyBodyGyroJerkMag_mean		range = [-1,1]
fBodyBodyGyroJerkMag_std		range = [-1,1]
fBodyBodyGyroJerkMag_meanFreq		range = [-1,1]
angletBodyAccMean_gravity		range = [-1,1]
angletBodyAccJerkMean_gravityMean		range = [-1,1]
angletBodyGyroMean_gravityMean		range = [-1,1]
angletBodyGyroJerkMean_gravityMean		range = [-1,1]
angleX_gravityMean		range = [-1,1]
angleY_gravityMean		range = [-1,1]
angleZ_gravityMean		range = [-1,1]
