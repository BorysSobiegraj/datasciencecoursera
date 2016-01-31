Code book 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Prefixes denotating domains:
t - time domain
f - frequency domain

Sufixes denotating axises:
Xaxis - X axis data
Yaxis - Y axis data
Zaxis - Z axis data

In our analysis we have limited ourselves to set of variables estimated from these signals listed below: 

Mean: Mean value
StdDiv: Standard deviation

The set was also provided with infotmation about the id of the subject and name of activity to which the observation is related:

SubjectID - id of the subject
ActivityName - name of the activity

Finaly this information was agregated on the level of SubjectID, ActivityName to provide us with final dataset. The complete list of variables of each feature vector is available below:

SubjectID
ActivityName
tBodyAccMeanYaxis
tBodyAccStdDivYaxis
tGravityAccMeanYaxis
tGravityAccStdDivYaxis
tBodyAccJerkMeanYaxis
tBodyAccJerkStdDivYaxis
tBodyGyroMeanYaxis
tBodyGyroStdDivYaxis
tBodyGyroJerkMeanYaxis
tBodyGyroJerkStdDivYaxis
tBodyAccMagStdDiv
tBodyAccJerkMagMean
tBodyGyroMagStdDiv
fBodyAccMeanXaxis
fBodyAccStdDivXaxis
fBodyAccJerkMeanXaxis
fBodyAccJerkStdDivXaxis
fBodyGyroMeanXaxis
fBodyGyroStdDivXaxis
fBodyAccMagMean
fBodyBodyAccJerkMagStdDiv
fBodyBodyGyroJerkMagMean
tBodyAccMeanZaxis
tBodyAccStdDivZaxis
tGravityAccMeanZaxis
tGravityAccStdDivZaxis
tBodyAccJerkMeanZaxis
tBodyAccJerkStdDivZaxis
tBodyGyroMeanZaxis
tBodyGyroStdDivZaxis
tBodyGyroJerkMeanZaxis
tBodyGyroJerkStdDivZaxis
tGravityAccMagMean
tBodyAccJerkMagStdDiv
tBodyGyroJerkMagMean
fBodyAccMeanYaxis
fBodyAccStdDivYaxis
fBodyAccJerkMeanYaxis
fBodyAccJerkStdDivYaxis
fBodyGyroMeanYaxis
fBodyGyroStdDivYaxis
fBodyAccMagStdDiv
fBodyBodyGyroMagMean
fBodyBodyGyroJerkMagStdDiv
tBodyAccMeanXaxis
tBodyAccStdDivXaxis
tGravityAccMeanXaxis
tGravityAccStdDivXaxis
tBodyAccJerkMeanXaxis
tBodyAccJerkStdDivXaxis
tBodyGyroMeanXaxis
tBodyGyroStdDivXaxis
tBodyGyroJerkMeanXaxis
tBodyGyroJerkStdDivXaxis
tBodyAccMagMean
tGravityAccMagStdDiv
tBodyGyroMagMean
tBodyGyroJerkMagStdDiv
fBodyAccMeanZaxis
fBodyAccStdDivZaxis
fBodyAccJerkMeanZaxis
fBodyAccJerkStdDivZaxis
fBodyGyroMeanZaxis
fBodyGyroStdDivZaxis
fBodyBodyAccJerkMagMean
fBodyBodyGyroMagStdDiv
