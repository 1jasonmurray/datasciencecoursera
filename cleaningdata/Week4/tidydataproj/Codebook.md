<p align="center">Tidied UCI HAR Dataset</p>
###Introduction
The following data set was obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
The test and training data provided was combined into a single dataset.  Then the mean and standard deviation for each measurment were filtered out.  Creating the tidyUCIdata set.  The mean for each variable was then calculated by subject and activity groups.   These are stored in tidyUCIdataMeans.  The same variable names are used in both sets of data but in the tidyUCIdataMeans all variables represent the means of the variables from the original set of data.    

###Features  
Full information about each variable and how it was obtained can be found in the features_info.txt file which was included with the original data set    

###Variables  
All variables except Subject and Activity are normalized and bounded within [-1,1]     

Subject  
range = [1,30]  
Subject as identified by number between 1 and 30  
  
Activity  
range = [1,6]  
Activity performed  
1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  
  
tBodyAcc_mean_X        
range = [-1,1]    
Mean value of body acceleration in the X direction  
  
tBodyAcc_mean_Y		
range = [-1,1]    
Mean value of body acceleration in the Y direction  
  
tBodyAcc_mean_Z		
range = [-1,1]    
Mean value of body acceleration in the Z direction  
  
tBodyAcc_std_X		
range = [-1,1]      
Standard deviation of body acceleration in the X direction  
  
tBodyAcc_std_Y		
range = [-1,1]     
Standard deviation of body acceleration in the Y direction  
  
tBodyAcc_std_Z		
range = [-1,1]      
Standard deviation of body acceleration in the Z direction  
  
tGravityAcc_mean_X		
range = [-1,1]      
Mean value of gravity acceleration in the X direction  
  
tGravityAcc_mean_Y		
range = [-1,1]    
Mean value of gravity acceleration in the Y direction  
  
GravityAcc_mean_Z		
range = [-1,1]    
Mean value of gravity acceleration in the Z direction  
  
tGravityAcc_std_X		
range = [-1,1]    
Standard deviation of gravity acceleration in the X direction  
  
tGravityAcc_std_Y		
range = [-1,1]    
Standard deviation of gravity acceleration in the Y direction  
  
tGravityAcc_std_Z		
range = [-1,1]    
Standard deviation of gravity acceleration in the Z direction  

tBodyAccJerk_mean_X		
range = [-1,1]      
Mean of body jerk signal in X direction   Derived from body acceleration and angular velocity in time    

tBodyAccJerk_mean_Y		
range = [-1,1]  
Mean of body jerk signal in Y direction   Derived from body acceleration and angular velocity in time    
  
tBodyAccJerk_mean_Z		
range = [-1,1]  
Mean of body jerk signal in Z direction   Derived from body acceleration and angular velocity in time    
  
tBodyAccJerk_std_X		
range = [-1,1]  
Standard deviation of body jerk signal in X direction   Derived from body acceleration and angular velocity in time    
  
tBodyAccJerk_std_Y		
range = [-1,1]  
Standard deviation of body jerk signal in Y direction   Derived from body acceleration and angular velocity in time    
  
tBodyAccJerk_std_Z		
range = [-1,1]  
Standard deviation of body jerk signal in Z direction   Derived from body acceleration and angular velocity in time    
  
tBodyGyro_mean_X		
range = [-1,1]  
Mean of magnitude of angular velocity in X direction   
  
tBodyGyro_mean_Y		
range = [-1,1]  
Mean of magnitude of angular velocity in Y direction   
  
tBodyGyro_mean_Z		
range = [-1,1]  
Mean of magnitude of angular velocity in Z direction   
  
tBodyGyro_std_X		
range = [-1,1]  
Standard deviration of magnitude of angular velocity in X direction   
  
tBodyGyro_std_Y		
range = [-1,1]  
Standard deviration of magnitude of angular velocity in Y direction   
  
tBodyGyro_std_Z		
range = [-1,1]  
Standard deviration of magnitude of angular velocity in Z direction   
  
tBodyGyroJerk_mean_X		
range = [-1,1]  
Mean of body jerk angle in X direction   Derived from body acceleration and angular velocity in time    
  
tBodyGyroJerk_mean_Y		
range = [-1,1]  
Mean of body jerk angle in Y direction   Derived from body acceleration and angular velocity in time    
  
tBodyGyroJerk_mean_Z		
range = [-1,1]  
Mean of body jerk angle in Z direction   Derived from body acceleration and angular velocity in time    
  
tBodyGyroJerk_std_X		
range = [-1,1]  
Standard deviation of body jerk angle in X direction   Derived from body acceleration and angular velocity in time    
  
tBodyGyroJerk_std_Y		
range = [-1,1]  
Standard deviation of body jerk angle in Y direction   Derived from body acceleration and angular velocity in time    
  
tBodyGyroJerk_std_Z		
range = [-1,1]  
Standard deviation of body jerk angle in Z direction   Derived from body acceleration and angular velocity in time    
  
tBodyAccMag_mean		
range = [-1,1]  
Mean of magnitude of body acceleration   
  
tBodyAccMag_std		
range = [-1,1]  
Standard deviation of magnitude of body acceleration   
  
tGravityAccMag_mean		
range = [-1,1]  
Mean of magnitude of gravity acceleration   
  
tGravityAccMag_std		
range = [-1,1]  
Standard deviation of magnitude of gravity acceleration   
  
tBodyAccJerkMag_mean		
range = [-1,1]  
Mean of body acceleration jerk magnitude   
  
tBodyAccJerkMag_std		
range = [-1,1]  
Standard deviation of body acceleration jerk magnitude   
  
tBodyGyroMag_mean		
range = [-1,1]  
Mean of body gyro magnitude   
  
tBodyGyroMag_std		
range = [-1,1]  
Standard deviation of body gyro magnitude   
  
tBodyGyroJerkMag_mean		
range = [-1,1]  
Mean of body gyro jerk magnitude   
  
tBodyGyroJerkMag_std		
range = [-1,1]  
Standard deviation of body gyro jerk magnitude   

fBodyAcc_mean_X		
range = [-1,1]  
Mean of body acceleration in X direction
  
fBodyAcc_mean_Y		
range = [-1,1]  
Mean of body acceleration in Y direction
  
fBodyAcc_mean_Z		
range = [-1,1]  
Mean of body acceleration in Z direction
  
fBodyAcc_std_X		
range = [-1,1]  
Standard deviation of body acceleration in X direction  
  
fBodyAcc_std_Y		
range = [-1,1]  
Standard deviation of body acceleration in Y direction  
  
fBodyAcc_std_Z		
range = [-1,1]  
Standard deviation of body acceleration in Z direction  
  
fBodyAcc_meanFreq_X		
range = [-1,1]  
Mean frequencey of body accelaration in X direction   
  
fBodyAcc_meanFreq_Y		
range = [-1,1]  
Mean frequencey of body accelaration in Y direction   
  
fBodyAcc_meanFreq_Z		
range = [-1,1]  
Mean frequencey of body accelaration in Z direction   
  
fBodyAccJerk_mean_X		
range = [-1,1]  
Mean of body accelaration jerk in X direction   
  
fBodyAccJerk_mean_Y		
range = [-1,1]  
Mean of body accelaration jerk in Y direction   
  
fBodyAccJerk_mean_Z		
range = [-1,1]  
Mean of body accelaration jerk in Z direction   
  
fBodyAccJerk_std_X		
range = [-1,1]  
Standard deviation body accelaration jerk in X direction   
   
fBodyAccJerk_std_Y		
range = [-1,1]  
Standard deviation body accelaration jerk in Y direction   
   
fBodyAccJerk_std_Z		
range = [-1,1]  
Standard deviation body accelaration jerk in Z direction   
   
fBodyAccJerk_meanFreq_X		
range = [-1,1]  
Mean frequency of body accelaration jerk in X direction   
  
fBodyAccJerk_meanFreq_Y		
range = [-1,1]  
Mean frequency of body accelaration jerk in Y direction   
  
fBodyAccJerk_meanFreq_Z		
range = [-1,1]  
Mean frequency of body accelaration jerk in Z direction   
  
fBodyGyro_mean_X		
range = [-1,1]  
Mean body gyro angle in X direction  
  
fBodyGyro_mean_Y		
range = [-1,1]  
Mean body gyro angle in Y direction  
  
fBodyGyro_mean_Z		
range = [-1,1]  
Mean body gyro angle in Z direction  
  
fBodyGyro_std_X		
range = [-1,1]  
Standard deviation of body gyro angle in X direction  
  
fBodyGyro_std_Y		
range = [-1,1]  
Standard deviation of body gyro angle in Y direction  
  
fBodyGyro_std_Z		
range = [-1,1]  
Standard deviation of body gyro angle in Z direction  
  
fBodyGyro_meanFreq_X		
range = [-1,1]  
Mean frequency of body gyro in X direction  
  
fBodyGyro_meanFreq_Y		
range = [-1,1]  
Mean frequency of body gyro in Y direction  
  
fBodyGyro_meanFreq_Z		
range = [-1,1]  
Mean frequency of body gyro in Z direction  
  
fBodyAccMag_mean		
range = [-1,1]  
Mean of body accelaration magnitude  
  
fBodyAccMag_std		
range = [-1,1]  
Standard deviation of body accelaration magnitude  
  
fBodyAccMag_meanFreq		
range = [-1,1]  
Mean frequency of body accelaration magnitude  
  
fBodyBodyAccJerkMag_mean		
range = [-1,1]  
Mean frequency of body accelaration jerk magnitude  
  
fBodyBodyAccJerkMag_std		
range = [-1,1]  
Standard deviation of frequency of body accelaration jerk magnitude  
  
fBodyBodyAccJerkMag_meanFreq		
range = [-1,1]  
Mean frequency of body accelaration jerk magnitude  
  
fBodyBodyGyroMag_mean		
range = [-1,1]  
Mean of body accelaration jerk magnitude  
  
fBodyBodyGyroMag_std		
range = [-1,1]  
Standard deviation of body gyro magnitude  
  
fBodyBodyGyroMag_meanFreq		
range = [-1,1]  
Mean frequency of body gyro magnitude   
  
fBodyBodyGyroJerkMag_mean		
range = [-1,1]  
Mean of body gyro jerk magnitude   
  
fBodyBodyGyroJerkMag_std		
range = [-1,1]  
Standard deviation of body gyro jerk magnitude   
  
fBodyBodyGyroJerkMag_meanFreq		
range = [-1,1]  
Mean frequency of body gyro jerk magnitude   
  
angletBodyAccMean_gravity		
range = [-1,1]  
Mean acceleration angle of body due to gravity  
  
angletBodyAccJerkMean_gravityMean		
range = [-1,1]  
Mean jerk acceleration angle due to gravity  
  
angletBodyGyroMean_gravityMean		
range = [-1,1]  
Mean body acceleration angle due to gravity  
  
angletBodyGyroJerkMean_gravityMean		
range = [-1,1]  
Mean body acceleration jerk angle due to gravity  
  
angleX_gravityMean		
range = [-1,1]  
Gravity mean of X angle  
  
angleY_gravityMean		
range = [-1,1]  
Gravity mean of Y angle  
  
angleZ_gravityMean		
range = [-1,1]  
Gravity mean of Z angle  
  
