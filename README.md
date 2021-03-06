==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Borys Sobiegraj
Coursea course
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial mean of: acceleration mean, standard deviation.
- Triaxial mean of: Angular velocity mean and standrad deviation from the gyroscope. 
- A 66-feature vector with time and frequency domain variables + 2 features with information about subjets id and avtivity name. 

The dataset includes the following files:
=========================================

- 'README.MD'

- 'CodeBook.md' - information about variables contained in the tidy dataset

- 'TidyDataSet.txt': Provides tidy data

- 'run_analysis.R' : Scrypt for tyding data

The run_analysis.R has its flow as described below:
===================================================

1. Reading in general info, train and test  data from the unziped repozitory (script asumes that the working directory is were the data was unziped)
2. Adding ActivityID and SubjectID to train and test datafiles
3. Merging train and test data
4. Providing initial names of columns 
5. Selecting columns with infomration about mean and standard deviation 
6. Adding column with Activity name
7. Improving names in the data set
8. Agregating dataset on Subjet and Activity
9. Creating a TidyDataSet.txt file 


