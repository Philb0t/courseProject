# courseProject
Coursera subject: Getting and Cleaning Data via Johns Hopkins University Course Project

##Introduction
Our variable's have been sourced from the original UCI Human Activity Recognition Using Smartphones Data Set. That dataset includes "Features_info.txt" descirbes the variables utilised in our tidy dataset, we have taken only the mean and standard deviation variables for our dataset and further averaged them (which is implied). The original variables can be found in "Features.txt".

After selection for only the 'mean' and 'std' variables, the variables where parsed by make.names() to ensure they are syntactically correct for R.
  - prefixed numbers (from readLines use on a table) where removed (they were not from the original dataset)
  - spaces were removed
  - '-' were removed and replaced with '.'
  - '(' and ')' were removed and repalced by '.'

##Understanding Variables Names
  - **I have not used a description in the table below for Variables 3 - 81 as they are defined in "Features_info.txt" and "Features.txt" in UCI Human Activity Recognition Using Smartphones Data Set's documentaiton. The following is a brief description to allow you to understand the variables in tidyDataset quickly and without refering to the original documentation.**
  
  - 'mean' This is the average function we are interested in
  - 'std' Standard Deviation function we are interested in
  
  - prefix 't' was for time, it has been replaced with **'time'** in the tidyDataset
  - prefix 'f' notes frequency domain signal variables (processed by Fast Fourier Transform (FFT)) it has been replaced with **'FFT'** in our tidy dataset
  - **'BodyAcceleration'** in variable names is because the acceleration signal was separated into body and gravity acceleration signals 
  - **'GravityAcceleration'** in variable names is because the acceleration signal was separated into body and gravity acceleration signals 
  - **'Jerk'** derivied from 'body linear acceleration and angular velocity were derived in time to obtain Jerk signals'
  - **'BodyGyro'** variables come from the base readings from the gyroscope, for body signal as opposed to gravity
  - **'Mag'** Magnitude, three-dimensional signals

  - **'X'** or **'Y'** or **'Z'** indicates a reading from specifc dimension
  - **'XYZ'** a 3D reading

##Table of Variables From tidyData
| Column Number | Variable Name                   | Variable Type | Description                                                                                                                                                              |
|---------------|---------------------------------|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1             | subjects                        | int           | values are 1 - 30, representing the 30 individuals that participated in the original study.                                                                              |
| 2             | activity                        | Factor        | 6 level factor that describes the activity that the subjects performed, 1 = WALKING, 2 = WALKING_UPSTAIRS, 3 = WALKING_DOWNSTAIRS, 4 = SITTING, 5 = STANDING, 6 = LAYING |
| 3             | timeBodyAcceleration.mean...X               | num           |                                                                                                                                                                          |
| 4             | timeBodyAcceleration.mean...Y               | num           |                                                                                                                                                                          |
| 5             | timeBodyAcceleration.mean...Z               | num           |                                                                                                                                                                          |
| 6             | timeGravityAcceleration.mean...X            | num           |                                                                                                                                                                          |
| 7             | timeGravityAcceleration.mean...Y            | num           |                                                                                                                                                                          |
| 8             | timeGravityAcceleration.mean...Z            | num           |                                                                                                                                                                          |
| 9             | timeBodyAccelerationJerk.mean...X           | num           |                                                                                                                                                                          |
| 10            | timeBodyAccelerationJerk.mean...Y           | num           |                                                                                                                                                                          |
| 11            | timeBodyAccelerationJerk.mean...Z           | num           |                                                                                                                                                                          |
| 12            | timeBodyGyro.mean...X              | num           |                                                                                                                                                                          |
| 13            | timeBodyGyro.mean...Y              | num           |                                                                                                                                                                          |
| 14            | timeBodyGyro.mean...Z              | num           |                                                                                                                                                                          |
| 15            | timeBodyGyroJerk.mean...X          | num           |                                                                                                                                                                          |
| 16            | timeBodyGyroJerk.mean...Y          | num           |                                                                                                                                                                          |
| 17            | timeBodyGyroJerk.mean...Z          | num           |                                                                                                                                                                          |
| 18            | timeBodyAccelerationMag.mean..              | num           |                                                                                                                                                                          |
| 19            | timeGravityAccelerationMag.mean..           | num           |                                                                                                                                                                          |
| 20            | timeBodyAccelerationJerkMag.mean..          | num           |                                                                                                                                                                          |
| 21            | timeBodyGyroMag.mean..             | num           |                                                                                                                                                                          |
| 22            | timeBodyGyroJerkMag.mean..         | num           |                                                                                                                                                                          |
| 23            | FFTBodyAcceleration.mean...X               | num           |                                                                                                                                                                          |
| 24            | FFTBodyAcceleration.mean...Y               | num           |                                                                                                                                                                          |
| 25            | FFTBodyAcceleration.mean...Z               | num           |                                                                                                                                                                          |
| 26            | FFTBodyAccelerationJerk.mean...X           | num           |                                                                                                                                                                          |
| 27            | FFTBodyAccelerationJerk.mean...Y           | num           |                                                                                                                                                                          |
| 28            | FFTBodyAccelerationJerk.mean...Z           | num           |                                                                                                                                                                          |
| 29            | FFTBodyGyro.mean...X              | num           |                                                                                                                                                                          |
| 30            | FFTBodyGyro.mean...Y              | num           |                                                                                                                                                                          |
| 31            | FFTBodyGyro.mean...Z              | num           |                                                                                                                                                                          |
| 32            | FFTBodyAccelerationMag.mean..              | num           |                                                                                                                                                                          |
| 33            | FFTBodyAccelerationJerkMag.mean..      | num           |                                                                                                                                                                          |
| 34            | FFTBodyGyroMag.mean..         | num           |                                                                                                                                                                          |
| 35            | FFTBodyGyroJerkMag.mean..     | num           |                                                                                                                                                                          |
| 36            | timeBodyAcceleration.std...X                | num           |                                                                                                                                                                          |
| 37            | timeBodyAcceleration.std...Y                | num           |                                                                                                                                                                          |
| 38            | timeBodyAcceleration.std...Z                | num           |                                                                                                                                                                          |
| 39            | timeGravityAcceleration.std...X             | num           |                                                                                                                                                                          |
| 40            | timeGravityAcceleration.std...Y             | num           |                                                                                                                                                                          |
| 41            | timeGravityAcceleration.std...Z             | num           |                                                                                                                                                                          |
| 42            | timeBodyAccelerationJerk.std...X            | num           |                                                                                                                                                                          |
| 43            | timeBodyAccelerationJerk.std...Y            | num           |                                                                                                                                                                          |
| 44            | timeBodyAccelerationJerk.std...Z            | num           |                                                                                                                                                                          |
| 45            | timeBodyGyro.std...X               | num           |                                                                                                                                                                          |
| 46            | timeBodyGyro.std...Y               | num           |                                                                                                                                                                          |
| 47            | timeBodyGyro.std...Z               | num           |                                                                                                                                                                          |
| 48            | timeBodyGyroJerk.std...X           | num           |                                                                                                                                                                          |
| 49            | timeBodyGyroJerk.std...Y           | num           |                                                                                                                                                                          |
| 50            | timeBodyGyroJerk.std...Z           | num           |                                                                                                                                                                          |
| 51            | timeBodyAccelerationMag.std..               | num           |                                                                                                                                                                          |
| 52            | timeGravityAccelerationMag.std..            | num           |                                                                                                                                                                          |
| 53            | timeBodyAccelerationJerkMag.std..           | num           |                                                                                                                                                                          |
| 54            | timeBodyGyroMag.std..              | num           |                                                                                                                                                                          |
| 55            | timeBodyGyroJerkMag.std..          | num           |                                                                                                                                                                          |
| 56            | FFTBodyAcceleration.std...X                | num           |                                                                                                                                                                          |
| 57            | FFTBodyAcceleration.std...Y                | num           |                                                                                                                                                                          |
| 58            | FFTBodyAcceleration.std...Z                | num           |                                                                                                                                                                          |
| 59            | FFTBodyAccelerationJerk.std...X            | num           |                                                                                                                                                                          |
| 60            | FFTBodyAccelerationJerk.std...Y            | num           |                                                                                                                                                                          |
| 61            | FFTBodyAccelerationJerk.std...Z            | num           |                                                                                                                                                                          |
| 62            | FFTBodyGyro.std...X               | num           |                                                                                                                                                                          |
| 63            | FFTBodyGyro.std...Y               | num           |                                                                                                                                                                          |
| 64            | FFTBodyGyro.std...Z               | num           |                                                                                                                                                                          |
| 65            | FFTBodyAccelerationMag.std..               | num           |                                                                                                                                                                          |
| 66            | FFTBodyAccelerationJerkMag.std..       | num           |                                                                                                                                                                          |
| 67            | FFTBodyGyroMag.std..          | num           |                                                                                                                                                                          |
| 68            | FFTBodyGyroJerkMag.std..      | num           |                                                                                                                                                         