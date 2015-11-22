#Code Book for the Resulting Tidy Data Set

The resulting tidy data set consists of a table of 68 columns and 40 rows.
Each row represents an observation, this observation contains the average variables of all observations based on all available combinations of subject_id and Activity

To begin with, this is a brief description of how the data was collected quoted from the creators of this data set:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
>
>For each record it is provided:
>======================================
>
>- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
>- Triaxial Angular velocity from the gyroscope. 
>- A 561-feature vector with time and frequency domain variables. 
>- Its activity label. 
>- An identifier of the subject who carried out the experiment.
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Following is a brief description of the data in each column:
*Subject_ID: A number identifying the volunteer carrying out the experiments 
*Activity: A string describing the type of activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
*tBodyAcc.mean...X: Average of the mean body acceleration in time domain in the X direction         
*tBodyAcc.mean...Y: Average of the mean body acceleration in time domain in the Y direction
*tBodyAcc.mean...Z: Average of the mean body acceleration in time domain in the Z direction
*tGravityAcc.mean...X:  Average of the mean gravity acceleration in time domain in the X direction
*tGravityAcc.mean...Y: Average of the mean gravity acceleration in time domain in the Y direction        
*tGravityAcc.mean...Z: Average of the mean gravity acceleration in time domain in the Z direction        
*tBodyAccJerk.mean...X: Average of the mean of the derivative of the body acceleration over time in the X direction      
*tBodyAccJerk.mean...Y: Average of the mean of the derivative of the body acceleration over time in the Y direction       
*tBodyAccJerk.mean...Z: Average of the mean of the derivative of the body acceleration over time in the Z direction
*tBodyGyro.mean...X: Average of the mean values of the Gyro readings in the X direction         
*tBodyGyro.mean...Y: Average of the mean values of the Gyro readings in the Y direction
*tBodyGyro.mean...Z: Average of the mean values of the Gyro readings in the Z direction
*tBodyGyroJerk.mean...X: Average of the mean values of the derivative of the Gyro readings in the X direction     
*tBodyGyroJerk.mean...Y: Average of the mean values of the derivative of the Gyro readings in the Y direction
*tBodyGyroJerk.mean...Z: Average of the mean values of the derivative of the Gyro readings in the Z direction
*tBodyAccMag.mean..: Average of the mean of the magnitude of the body acceleration         
*tGravityAccMag.mean..: Average of the mean of the magnitude of the gravity acceleration
*tBodyAccJerkMag.mean..: Average of the mean of the derivative of the body acceleration
*tBodyGyroMag.mean..: Average of the mean of the magnitude of the Gyro signals        
*tBodyGyroJerkMag.mean..: Average of the mean of the magnitude of the derivative of the Gyro signals
*fBodyAcc.mean...X: same as tBodyAcc.mean...X but in frequency domain 
*fBodyAcc.mean...Y: same as tBodyAcc.mean...Y but in frequency domain          
*fBodyAcc.mean...Z: same as tBodyAcc.mean...Z but in frequency domain
*fBodyAccJerk.mean...X: same as tBodyAccJerk.mean...X but in frequency domain
*fBodyAccJerk.mean...Y: same as tBodyAccJerk.mean...Y but in frequency domain      
*fBodyAccJerk.mean...Z: same as tBodyAccJerk.mean...Z but in frequency domain
*fBodyGyro.mean...X: same as tBodyGyro.mean...X but in frequency domain
*fBodyGyro.mean...Y: same as tBodyGyro.mean...Y but in frequency domain         
*fBodyGyro.mean...Z: same as tBodyGyro.mean...Z but in frequency domain
*fBodyAccMag.mean..: same as tBodyAccMag.mean.. but in frequency domain
*fBodyBodyAccJerkMag.mean..: same as tBodyAccJerkMag.mean.. but in frequency domain 
*fBodyBodyGyroMag.mean..: same as tBodyGyroMag.mean.. but in frequency domain
*fBodyBodyGyroJerkMag.mean..: same as tBodyGyroJerkMag.mean.. but in frequency domain
*tBodyAcc.std...X: Average of the standard deviation of body acceleration in time domain in the X direction           
*tBodyAcc.std...Y: Average of the standard deviation of body acceleration in time domain in the Y direction
*tBodyAcc.std...Z: Average of the standard deviation of body acceleration in time domain in the Z direction
*tGravityAcc.std...X: Average of the standard deviation of gravitational acceleration in time domain in the X direction        
*tGravityAcc.std...Y: Average of the standard deviation of gravitational acceleration in time domain in the Y direction
*tGravityAcc.std...Z: Average of the standard deviation of gravitational acceleration in time domain in the Z direction
*tBodyAccJerk.std...X: Average of the standard deviation of the derivative of the body acceleration over time in the X direction       
*tBodyAccJerk.std...Y: Average of the standard deviation of the derivative of the body acceleration over time in the Y direction
*tBodyAccJerk.std...Z: Average of the standard deviation of the derivative of the body acceleration over time in the Z direction
*tBodyGyro.std...X: Average of the standard deviation of the Gyro readings in the X direction
*tBodyGyro.std...Y: Average of the standard deviation of the Gyro readings in the Y direction
*tBodyGyro.std...Z: Average of the standard deviation of the Gyro readings in the Z direction
*tBodyGyroJerk.std...X: Average of the standard deviation of the derivative of the Gyro readings in the X direction      
*tBodyGyroJerk.std...Y: Average of the standard deviation of the derivative of the Gyro readings in the Y direction
*tBodyGyroJerk.std...Z: Average of the standard deviation of the derivative of the Gyro readings in the Z direction
*tBodyAccMag.std..: Average of the standard deviation of the magnitude of the body acceleration         
*tGravityAccMag.std..: Average of the standard deviation of the magnitude of the gravity acceleration
*tBodyAccJerkMag.std..: Average of the standard deviation of the derivative of the body acceleration
*tBodyGyroMag.std..: Average of the standard deviation of the magnitude of the Gyro signals        
*tBodyGyroJerkMag.std..: Average of the standard deviation of the magnitude of the derivative of the Gyro signals          
*fBodyAcc.std...X: same as tBodyAcc.std...X but in frequency domain
*fBodyAcc.std...Y: same as tBodyAcc.std...Y but in frequency domain           
*fBodyAcc.std...Z: same as tBodyAcc.std...Z but in frequency domain
*fBodyAccJerk.std...X: same as tBodyAccJerk.std...X but in frequency domain
*fBodyAccJerk.std...Y: same as tBodyAccJerk.std...Y but in frequency domain      
*fBodyAccJerk.std...Z: same as tBodyAccJerk.std...Z but in frequency domain
*fBodyGyro.std...X: same as tBodyGyro.std...X but in frequency domain
*fBodyGyro.std...Y: same as tBodyGyro.std...Y but in frequency domain          
*fBodyGyro.std...Z: same as tBodyGyro.std...Z but in frequency domain
*fBodyAccMag.std..:same as tBodyAccMag.std.. but in frequency domain
*fBodyBodyAccJerkMag.std..: same as tBodyAccJerkMag.std.. but in frequency domain  
*fBodyBodyGyroMag.std..: same as tBodyGyroMag.std.. but in frequency domain
*fBodyBodyGyroJerkMag.std..: same as tBodyGyroJerkMag.std.. but in frequency domain


Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012