
###   Load required packages, load plyr first, dplyr second due to compatability issues...
library(plyr)     
library(dplyr)


###   1. Merges the training and the test sets to create one data set.
directories <- list.dirs("./UCI HAR Dataset", recursive = FALSE)
fileList<-list.files(directories, full.names = TRUE)
toBeMerged <- fileList[grepl("X_t", fileList)]                    ###   Created a list of the locations of the files that require mergeing into one dataFrame.
dataset <- ldply(toBeMerged, read.table)                          ###   With this list, create a df by merging the two files together and store the result in 'dataset'


###   2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
###
###       First, I added the column headings to replace the V1,V2 etc variable names, with their approriate names stored in 'features.txt'
###       Because I used readLines, the table in features.txt grabbed the numbers from column 1 and concatinated it with the actual variable name in column 2. e.g. "561 angle(Z,gravityMean)"  
###       This was ok for now as I will have to clean up the variable names in a further step anyway.
###
###       Secondly, I wanted to add the Subject and Activity Variables in too.
fileList2 <- list.files("./UCI HAR Dataset", full.names = TRUE)   ###   Read in the location of the file of interest
colHeadingsFile <- fileList2[grepl("features.txt", fileList2)]    ###   grep the features.txt file's location and store as a string
colHeadings <- readLines(colHeadingsFile)                         ###   Read contents of features.txt and store in a char vector
colnames(dataset) <- colHeadings                                  ###   setting the names of the 561 columns

###   This code below will take the train and test activity lables located in diff directories, combine them together and then combine it to the existing dataset

activityFiles <- fileList[grepl("y_t", fileList)]                 ###   order is test then train
testActivity <- read.table(activityFiles[1])
trainActivity <- read.table(activityFiles[2])
combinedActivity <- rbind(testActivity,trainActivity)
dataset[,"562 activity"] <- combinedActivity                      ###   added data to the end of the df. Kept the naming convention with number prefixed for now

subjectFiles <- fileList[grepl("subject_t", fileList)]            ###   order is test then train
testSubjects <- read.table(subjectFiles[1])
trainSubjects <- read.table(subjectFiles[2])
combinedSubjects <- rbind(testSubjects,trainSubjects)
dataset[,"563 subjects"] <- combinedSubjects                      ###   added data to the end of the df. Kept the naming convention with number prefixed for now

dataset <- tbl_df(dataset)                                        ###   converted dataset to tbl_df from package:dplyr so I could use select() to keep the mean and std variables and drop the rest. I chose to drop Angle() and meanFreq() functions as I explained in the README under the ##Assumptions heading. I need to take care here too as I think select re-arranges the variables too.
dataset <-select(dataset, contains("activity"),contains("subjects"),contains("mean"), contains("std"), -contains("angle"), -contains("freq")) 

###   The below for loop, iterates through dataset, splits the variable names at the space storing the actual variable name, then appends the correct variable name to a char vector that I used to overwrite the current variable names in 'dataset'.
for (i in 1:length(dataset)) {
  if(!exists("colHeadingsUpdated")) colHeadingsUpdated <- (strsplit(names(dataset)," "))[[i]][2]
  else colHeadingsUpdated <- append(colHeadingsUpdated, (strsplit(names(dataset)," "))[[i]][2])
}
colnames(dataset) <- colHeadingsUpdated


###   3.  Uses descriptive activity names to name the activities in the data set
activityLabelsDir <- fileList2[grepl("y_l", fileList2)]           ###   store the file location in a string
activitylabels <- read.table(activityLabelsDir)                   ###   used read.table to read it in, stored as a df
activitylabels <- as.character(activitylabels$V2)                 ###   Took the Activity labels variable in the df, converted to char vector and stored it
dataset$activity <- cut(dataset$activity, breaks = seq(0,6, by = 1), labels = activitylabels) ###   converts activity to 6 factor levels and applys the labels!


###   4.  Appropriately labels the data set with descriptive variable names. 
###       I have been doing a bit of this in step 2 above but have built on it abit here.
names(dataset) <- make.names(names(dataset), unique = TRUE)       ###   Make syntastically correct names for columns and check that they are unique


###   5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
dataset<-aggregate(dataset, by = list(dataset$subjects, dataset$activity), FUN = mean)  ###   subsetted data set by subject then activity, computed the mean on each variable and returned the result, 

dataset$subjects <- NULL        ###   Through aggregate, subjects and activity have been replaced with Group 1 and group 2 variables.
dataset$activity <- NULL        ###   I deleted those variable by setting to NULL and renamed the group 1 & 2 variables to subect and activity instead.
colnames(dataset)[1] <- "subjects"
colnames(dataset)[2] <- "activity"

tidyDataset <- dataset          ###   This instructions for part 5 say to create a second dataset thats tidy, so here is the second dataset thats tidy :P
write.table(tidyDataset, "tidyDataset.txt", row.names = FALSE)  ##  Writes out the tidy dataset in a text file, stored in the working dir

###   This just cleans up all the old variables and data that are not needed anymore
rm("combinedActivity","combinedSubjects","testActivity","testSubjects","trainActivity","trainSubjects")
rm("activityFiles", "activitylabels","activityLabelsDir","colHeadings","colHeadingsFile","colHeadingsUpdated","directories","fileList","fileList2", "i", "subjectFiles", "toBeMerged")

#############################################################################
##  considerations for step 4:
##  fix the errors in the original variable names where they do not match their own codebook (i.e. BodyBody) 
##  make the names safe to use in R
##  expand f and t (and maybe Acc) to something readable. 

gg <- c("a1")

for (i in nrow(x)) {
  gg <- append(gg, i)
}
  
  

