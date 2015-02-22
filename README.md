# courseProject
Coursera subject: Getting and Cleaning Data via Johns Hopkins University Course Project


##Introduction
The focus of run_analysis.R is to get, clean and tidy the dataset from the 'Human Activity Recognition Using Smartphones Data Set' produced by University of California, Irvine. 

##Analysis of The Data
The training and testing datasets which were originally seperate are joined together into one dataset.
Our focus is only on the mean and standard deviation features, all other features are removed.
Each activity value has been altered to reflect a discriptive activity name instead of a number.
The datasets original variable names have been added and updated to be more descriptive such that:
  - errors in the original variable names where they do not match their own codebook (i.e. BodyBody) have been fixed.
  - spaces, brackets and hyphens have been removed and the variable names have been made safe to be used in R.
  - variable names where made more descriptive (t and f prefix's have been expanded and Acc was expanded to Accelerate)
  - Finally, a tidy dataset is produced and written out as a text file ("tidyDataset.txt") to the working directory with the average (mean) of each variable for each activity and each subject.

**Further explanation of the specific methods used and processes taken are described in the comments in "run_anaysis.R".**

##Included Files 
  - README.md:        This file, a summary of the files, script and analysis performed.
  - CodeBook.md:      Shows information about the variables used in the dataset vector.
  - run_analysis.R:   A script that performs the analysis described above (Analysis of The Data).

##Not Included Files
####Files used as inputs from the 'UCI HAR Dataset', Their descriptions can be found in 'UCI HAR Dataset/README.txt'
  - features.txt
  - activity_labels.txt
  - train/X_train.txt
  - train/y_train.txt
  - test/X_test.txt
  - test/y_test.txt
  - train/subject_train.txt
  - test/subject_test.txt

##Other Files
  - tidyDataset.txt:  The final output result of running "run_analysis.R".
  
##Assumptions
  - The data has been downloaded and unzipped and the UCI HAR Dataset directory has been placed in the current working directory.
  - 'angle()' function mean and std varaibles were dropped as they are originally measure the angle between two vectors and not mean or std functions.
  - 'meanFreq()' functions calculated the mean of frequencies which is not what we were **specifically** after. I am only after std() and mean() so meanFreq() is dropped from our analysis.
  
##Notes
  - Once the script has been run and the output file "tidyDataset.txt" produced, it can be read back into R and stored in a data.frame called tidyData using the below code (assuming it is located in the current working directory):
  ```
  tidyDataset<-read.table("tidyDataset.txt", header = TRUE)
  ```

