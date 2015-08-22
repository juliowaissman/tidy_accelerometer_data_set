# Codebook for `final_tidy.txt`

A code book that describes the variables, the data, and any transformations or work performed to clean up the data

## Source of the raw dataset

**Human Activity Recognition Using Smartphones Dataset Version 1.0**

*Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.*

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

[activityrecognition@smartlab.ws](mailto:activityrecognition@smartlab.ws)

[www.smartlab.ws](www.smartlab.ws)

The data set can be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

Use of this dataset in publications must be acknowledged by referencing the following publication:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. *Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine*. **International Workshop of Ambient Assisted Living (IWAAL 2012)**. Vitoria-Gasteiz, Spain. Dec 2012


## Structure of the raw data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, was captured 3-axial linear acceleration
and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The dataset includes the following files:

- `README.txt`

- `features_info.txt`: Shows information about the variables used on the feature vector.

- `features.txt`: List of all features.

- `activity_labels.txt`: Links the class labels with their activity name.

- `train/X_train.txt`: Training set.

- `train/y_train.txt`: Training labels.

- `test/X_test.txt`: Test set.

- `test/y_test.txt`: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- `train/subject_train.txt`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- `train/Inertial Signals/total_acc_x_train.txt`: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- `train/Inertial Signals/body_acc_x_train.txt`: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- `train/Inertial Signals/body_gyro_x_train.txt`: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


## Features used from the raw data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated and used from these signals are: 

- mean(): Mean value
- std(): Standard deviation

## Transformations

The *train* and *test* data was merged for the variables of interest, along with the activity and de subject. Once obtained this subset, a mean value
of the data for each activitie and for each subject was obtained, the steps realized was:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## List of variables of the data

1. `activity`
2. `subject`
3. `tBodyAcc-mean()-X`
4. `tBodyAcc-mean()-Y`
5. `tBodyAcc-mean()-Z`
6. `tBodyAcc-std()-X`
7. `tBodyAcc-std()-Y`
8. `tBodyAcc-std()-Z`
9. `tGravityAcc-mean()-X`
10. `tGravityAcc-mean()-Y`
11. `tGravityAcc-mean()-Z`
12. `tGravityAcc-std()-X`
13. `tGravityAcc-std()-Y`
14. `tGravityAcc-std()-Z`
15. `tBodyAccJerk-mean()-X`
16. `tBodyAccJerk-mean()-Y`
17. `tBodyAccJerk-mean()-Z`
18. `tBodyAccJerk-std()-X`
19. `tBodyAccJerk-std()-Y`
20. `tBodyAccJerk-std()-Z`
21. `tBodyGyro-mean()-X`
22. `tBodyGyro-mean()-Y`
23. `tBodyGyro-mean()-Z`
24. `tBodyGyro-std()-X`
25. `tBodyGyro-std()-Y`
26. `tBodyGyro-std()-Z`
27. `tBodyGyroJerk-mean()-X`
28. `tBodyGyroJerk-mean()-Y`
29. `tBodyGyroJerk-mean()-Z`
30. `tBodyGyroJerk-std()-X`
31. `tBodyGyroJerk-std()-Y`
32. `tBodyGyroJerk-std()-Z`
33. `tBodyAccMag-mean()`
34. `tBodyAccMag-std()`
35. `tGravityAccMag-mean()`
36. `tGravityAccMag-std()`
37. `tBodyAccJerkMag-mean()`
38. `tBodyAccJerkMag-std()`
39. `tBodyGyroMag-mean()`
40. `tBodyGyroMag-std()`
41. `tBodyGyroJerkMag-mean()`
42. `tBodyGyroJerkMag-std()`
43. `fBodyAcc-mean()-X`
44. `fBodyAcc-mean()-Y`
45. `fBodyAcc-mean()-Z`
46. `fBodyAcc-std()-X`
47. `fBodyAcc-std()-Y`
48. `fBodyAcc-std()-Z`
49. `fBodyAccJerk-mean()-X`
50. `fBodyAccJerk-mean()-Y`
51. `fBodyAccJerk-mean()-Z`
52. `fBodyAccJerk-std()-X`
53. `fBodyAccJerk-std()-Y`
54. `fBodyAccJerk-std()-Z`
55. `fBodyGyro-mean()-X`
56. `fBodyGyro-mean()-Y`
57. `fBodyGyro-mean()-Z`
58. `fBodyGyro-std()-X`
59. `fBodyGyro-std()-Y`
60. `fBodyGyro-std()-Z`
61. `fBodyAccMag-mean()`
62. `fBodyAccMag-std()`
63. `fBodyBodyAccJerkMag-mean()`
64. `fBodyBodyAccJerkMag-std()`
65. `fBodyBodyGyroMag-mean()`
66. `fBodyBodyGyroMag-std()`
67. `fBodyBodyGyroJerkMag-mean()`
68. `fBodyBodyGyroJerkMag-std()`
