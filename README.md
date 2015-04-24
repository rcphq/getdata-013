Getting and Cleaning Data
----
Course Project
----
V1.0
----

The purpose of this project is to comply with the requirements for the course Project detailed on https://class.coursera.org/getdata-013/human_grading/view/courses/973500/assessments/3/submissions

As such, the script for run_analysis.R was created with the following assumptions and purpose:

**Assumptions / Requirements:**
=======


 - 'dplyr' Package
 - run_analysis.R MUST be run from working directory which contains the
   Dataset
 - Complete data set as detailed below.

**Data set must contain following files:**

 - 'features.txt': List of all features.
 - 'activity_labels.txt': Links the class labels with their activity name.
 - 'train/X_train.txt': Training set.
 - 'train/y_train.txt': Training labels.
 - 'test/X_test.txt': Test set.
 - 'test/y_test.txt': Test labels.

 data set used: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
**Purpose:** 
=======

 - Read the train and test data sets
 - Join with subject and activity information. 
 - Clean up column/feature/activity names
 - Filter to only include measurements on the mean and standard deviation for each measurement.
 - Produce a summarized tidy data set with the average of each variable for each activity and each subject.


How to run Script:
-------

 1.  Source script: 

        `source("run_analysis.R")`

 2. Run analysis function

        `run_analysis()` 

 3. view tidy data set txt in working directory:

        > "joined.tidy.txt"

4. (optional) If you wish to load the data into R:

        `t2 <- read.table("joined.tidy.txt",header=TRUE)`

        `head(t2)`



**Optional:**

*How to Install 'dplyr':*

If You dont have the 'dplyr' package, please install and required before running. If you need any help, run this code:

    if(require("dplyr")){
      print("dplyr is loaded correctly")
    } else {
      print("trying to install dplyr")
      install.packages("dplyr")
      if(require(dplyr)){
        print("dplyr installed and loaded")
      } else {
        stop("could not install dplyr")
      }
    }