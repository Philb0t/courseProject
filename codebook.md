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
  
  - prefix 't' is for time
  - prefix 'f' notes frequency domain signal variables (processed byFast Fourier Transform (FFT))
  - 'BodyAcc' in variable names is because the acceleration signal was separated into body and gravity acceleration signals 
  - 'GravityAcc' in variable names is because the acceleration signal was separated into body and gravity acceleration signals 
  - 'Jerk' derivied from 'body linear acceleration and angular velocity were derived in time to obtain Jerk signals'
  - 'BodyGyro' variables come from the base readings from the gyroscope, for body signal as opposed to gravity
  - 'Mag' Magnitude, three-dimensional signals

  - 'X' or 'Y' or 'Z' indicates a reading from specifc dimension
  - 'XYZ' a 3D reading

##Variables from tidyData
| Column Number | Variable Name                   | Variable Type | Description                                                                                                                                                              |
|---------------|---------------------------------|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1             | subjects                        | int           | values are 1 - 30, representing the 30 individuals that participated in the original study.                                                                              |
| 2             | activity                        | Factor        | 6 level factor that describes the activity that the subjects performed, 1 = WALKING, 2 = WALKING_UPSTAIRS, 3 = WALKING_DOWNSTAIRS, 4 = SITTING, 5 = STANDING, 6 = LAYING |
| 3             | tBodyAcc.mean...X               | num           |                                                                                                                                                                          |
| 4             | tBodyAcc.mean...Y               | num           |                                                                                                                                                                          |
| 5             | tBodyAcc.mean...Z               | num           |                                                                                                                                                                          |
| 6             | tGravityAcc.mean...X            | num           |                                                                                                                                                                          |
| 7             | tGravityAcc.mean...Y            | num           |                                                                                                                                                                          |
| 8             | tGravityAcc.mean...Z            | num           |                                                                                                                                                                          |
| 9             | tBodyAccJerk.mean...X           | num           |                                                                                                                                                                          |
| 10            | tBodyAccJerk.mean...Y           | num           |                                                                                                                                                                          |
| 11            | tBodyAccJerk.mean...Z           | num           |                                                                                                                                                                          |
| 12            | tBodyGyro.mean...X              | num           |                                                                                                                                                                          |
| 13            | tBodyGyro.mean...Y              | num           |                                                                                                                                                                          |
| 14            | tBodyGyro.mean...Z              | num           |                                                                                                                                                                          |
| 15            | tBodyGyroJerk.mean...X          | num           |                                                                                                                                                                          |
| 16            | tBodyGyroJerk.mean...Y          | num           |                                                                                                                                                                          |
| 17            | tBodyGyroJerk.mean...Z          | num           |                                                                                                                                                                          |
| 18            | tBodyAccMag.mean..              | num           |                                                                                                                                                                          |
| 19            | tGravityAccMag.mean..           | num           |                                                                                                                                                                          |
| 20            | tBodyAccJerkMag.mean..          | num           |                                                                                                                                                                          |
| 21            | tBodyGyroMag.mean..             | num           |                                                                                                                                                                          |
| 22            | tBodyGyroJerkMag.mean..         | num           |                                                                                                                                                                          |
| 23            | fBodyAcc.mean...X               | num           |                                                                                                                                                                          |
| 24            | fBodyAcc.mean...Y               | num           |                                                                                                                                                                          |
| 25            | fBodyAcc.mean...Z               | num           |                                                                                                                                                                          |
| 26            | fBodyAccJerk.mean...X           | num           |                                                                                                                                                                          |
| 27            | fBodyAccJerk.mean...Y           | num           |                                                                                                                                                                          |
| 28            | fBodyAccJerk.mean...Z           | num           |                                                                                                                                                                          |
| 29            | fBodyGyro.mean...X              | num           |                                                                                                                                                                          |
| 30            | fBodyGyro.mean...Y              | num           |                                                                                                                                                                          |
| 31            | fBodyGyro.mean...Z              | num           |                                                                                                                                                                          |
| 32            | fBodyAccMag.mean..              | num           |                                                                                                                                                                          |
| 33            | fBodyBodyAccJerkMag.mean..      | num           |                                                                                                                                                                          |
| 34            | fBodyBodyGyroMag.mean..         | num           |                                                                                                                                                                          |
| 35            | fBodyBodyGyroJerkMag.mean..     | num           |                                                                                                                                                                          |
| 36            | tBodyAcc.std...X                | num           |                                                                                                                                                                          |
| 37            | tBodyAcc.std...Y                | num           |                                                                                                                                                                          |
| 38            | tBodyAcc.std...Z                | num           |                                                                                                                                                                          |
| 39            | tGravityAcc.std...X             | num           |                                                                                                                                                                          |
| 40            | tGravityAcc.std...Y             | num           |                                                                                                                                                                          |
| 41            | tGravityAcc.std...Z             | num           |                                                                                                                                                                          |
| 42            | tBodyAccJerk.std...X            | num           |                                                                                                                                                                          |
| 43            | tBodyAccJerk.std...Y            | num           |                                                                                                                                                                          |
| 44            | tBodyAccJerk.std...Z            | num           |                                                                                                                                                                          |
| 45            | tBodyGyro.std...X               | num           |                                                                                                                                                                          |
| 46            | tBodyGyro.std...Y               | num           |                                                                                                                                                                          |
| 47            | tBodyGyro.std...Z               | num           |                                                                                                                                                                          |
| 48            | tBodyGyroJerk.std...X           | num           |                                                                                                                                                                          |
| 49            | tBodyGyroJerk.std...Y           | num           |                                                                                                                                                                          |
| 50            | tBodyGyroJerk.std...Z           | num           |                                                                                                                                                                          |
| 51            | tBodyAccMag.std..               | num           |                                                                                                                                                                          |
| 52            | tGravityAccMag.std..            | num           |                                                                                                                                                                          |
| 53            | tBodyAccJerkMag.std..           | num           |                                                                                                                                                                          |
| 54            | tBodyGyroMag.std..              | num           |                                                                                                                                                                          |
| 55            | tBodyGyroJerkMag.std..          | num           |                                                                                                                                                                          |
| 56            | fBodyAcc.std...X                | num           |                                                                                                                                                                          |
| 57            | fBodyAcc.std...Y                | num           |                                                                                                                                                                          |
| 58            | fBodyAcc.std...Z                | num           |                                                                                                                                                                          |
| 59            | fBodyAccJerk.std...X            | num           |                                                                                                                                                                          |
| 60            | fBodyAccJerk.std...Y            | num           |                                                                                                                                                                          |
| 61            | fBodyAccJerk.std...Z            | num           |                                                                                                                                                                          |
| 62            | fBodyGyro.std...X               | num           |                                                                                                                                                                          |
| 63            | fBodyGyro.std...Y               | num           |                                                                                                                                                                          |
| 64            | fBodyGyro.std...Z               | num           |                                                                                                                                                                          |
| 65            | fBodyAccMag.std..               | num           |                                                                                                                                                                          |
| 66            | fBodyBodyAccJerkMag.std..       | num           |                                                                                                                                                                          |
| 67            | fBodyBodyGyroMag.std..          | num           |                                                                                                                                                                          |
| 68            | fBodyBodyGyroJerkMag.std..      | num           |                                                                                                                                                         