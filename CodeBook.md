##Analysis performed

To produce the tidy dataset required by this assignment we did the follow step:

1. Download zip file from course site, save it to data directory and unzip it

2. Load data into R

3. Merge the column in train and test dataset with subject and activity type

4. Merge train and test dataset together

5. Load and clean feature description from raw data

6. Keep only columns regarding mean and standard deviation

7. Summarise dataset by subject and activity

8. Save tidy dataset to file

##Features in tidy dataset

- Subject: the subject who performed the activity
- Activity: activity name
- tBodyAcc_mean_X 
- tBodyAcc_mean_Y 
- tBodyAcc_mean_Z 
- tGravityAcc_mean_X 
- tGravityAcc_mean_Y 
- tGravityAcc_mean_Z 
- tBodyAccJerk_mean_X 
- tBodyAccJerk_mean_Y 
- tBodyAccJerk_mean_Z 
- tBodyGyro_mean_X 
- tBodyGyro_mean_Y 
- tBodyGyro_mean_Z
- tBodyGyroJerk_mean_X 
- tBodyGyroJerk_mean_Y 
- tBodyGyroJerk_mean_Z 
- tBodyAccMag_mean 
- tGravityAccMag_mean 
- tBodyAccJerkMag_mean 
- tBodyGyroMag_mean 
- tBodyGyroJerkMag_mean 
- fBodyAcc_mean_X 
- fBodyAcc_mean_Y 
- fBodyAcc_mean_Z 
- fBodyAcc_meanFreq_X 
- fBodyAcc_meanFreq_Y 
- fBodyAcc_meanFreq_Z 
- fBodyAccJerk_mean_X 
- fBodyAccJerk_mean_Y 
- fBodyAccJerk_mean_Z 
- fBodyAccJerk_meanFreq_X 
- fBodyAccJerk_meanFreq_Y 
- fBodyAccJerk_meanFreq_Z 
- fBodyGyro_mean_X 
- fBodyGyro_mean_Y 
- fBodyGyro_mean_Z 
- fBodyGyro_meanFreq_X 
- fBodyGyro_meanFreq_Y 
- fBodyGyro_meanFreq_Z 
- fBodyAccMag_mean 
- fBodyAccMag_meanFreq 
- fBodyBodyAccJerkMag_mean 
- fBodyBodyAccJerkMag_meanFreq 
- fBodyBodyGyroMag_mean 
- fBodyBodyGyroMag_meanFreq 
- fBodyBodyGyroJerkMag_mean 
- fBodyBodyGyroJerkMag_meanFreq 
- angle.tBodyAccMean.gravity.
- angle.tBodyAccJerkMean..gravityMean. 
- angle.tBodyGyroMean.gravityMean. 
- angle.tBodyGyroJerkMean.gravityMean. 
- angle.X.gravityMean. 
- angle.Y.gravityMean. 
- angle.Z.gravityMean. 
- tBodyAcc_std_X 
- tBodyAcc_std_Y 
- tBodyAcc_std_Z 
- tGravityAcc_std_X 
- tGravityAcc_std_Y 
- tGravityAcc_std_Z 
- tBodyAccJerk_std_X 
- tBodyAccJerk_std_Y 
- tBodyAccJerk_std_Z 
- tBodyGyro_std_X 
- tBodyGyro_std_Y 
- tBodyGyro_std_Z 
- tBodyGyroJerk_std_X 
- tBodyGyroJerk_std_Y 
- tBodyGyroJerk_std_Z 
- tBodyAccMag_std 
- tGravityAccMag_std 
- tBodyAccJerkMag_std 
- tBodyGyroMag_std 
- tBodyGyroJerkMag_std 
- fBodyAcc_std_X 
- fBodyAcc_std_Y 
- fBodyAcc_std_Z 
- fBodyAccJerk_std_X 
- fBodyAccJerk_std_Y 
- fBodyAccJerk_std_Z 
- fBodyGyro_std_X 
- fBodyGyro_std_Y 
- fBodyGyro_std_Z 
- fBodyAccMag_std 
- fBodyBodyAccJerkMag_std 
- fBodyBodyGyroMag_std 
- fBodyBodyGyroJerkMag_std
