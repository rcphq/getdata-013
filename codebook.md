Code Book:
----------

Setup: 
======
From data collected from the accelerometers from the Samsung Galaxy S smart phone, join the 2 different data sets including additional information for subject and activity; Finally, present a tidy data set with the average value on means and standard deviations from each measurement in the original dataset grouped by subject and activity.
(data source:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

Raw Data:
---------

Train and Test data sets containing:
 - A 561-feature vector with time and frequency domain variables. 
 - Its activity label. 
 - An identifier of the subject who carried out the experiment.
(Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

Processed Data:
-------

Joining the 2 data sets (Train and Test) into 1 complete data set including subject and activity information. Activity was converted from numeric (1-6) to factor identifying each of the 6 activities. Features included as variable names for the 561 variables as well as for 'subject' and 'activity'.
Columns were filtered to include only the measurements on the mean and standard deviation for each measurements, with subject and activity info.
Finally the train and test datasets were joined and names fixed.


Data Dictionary:
-------
"subject" 
    Integer. Identifies the subject who performed the activity for each window sample. Values: 1 to 30.									

"activity"                                
	Factor. Identifies activity performed for sample. 6 possible values.
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING
"mean.of.tBodyAcc-mean()-X"              
	Double. Represents the mean value of "tBodyAcc-mean()-X" measurement reading for the subject+activity.

"mean.of.tBodyAcc-mean()-Y"               
	Double. Represents the mean value of "tBodyAcc-mean()-Y" measurement reading for the subject+activity.

"mean.of.tBodyAcc-mean()-Z"               
	Double. Represents the mean value of "tBodyAcc-mean()-Z" measurement reading for the subject+activity.

"mean.of.tBodyAcc-std()-X"               
	Double. Represents the mean value of "tBodyAcc-std()-X" measurement reading for the subject+activity.

"mean.of.tBodyAcc-std()-Y"                
	Double. Represents the mean value of "tBodyAcc-std()-Y" measurement reading for the subject+activity.

"mean.of.tBodyAcc-std()-Z"                
	Double. Represents the mean value of "tBodyAcc-std()-Z" measurement reading for the subject+activity.

"mean.of.tGravityAcc-mean()-X"           
	Double. Represents the mean value of "tGravityAcc-mean()-X" measurement reading for the subject+activity.

"mean.of.tGravityAcc-mean()-Y"            
	Double. Represents the mean value of "tGravityAcc-mean()-Y" measurement reading for the subject+activity.

"mean.of.tGravityAcc-mean()-Z"            
	Double. Represents the mean value of "tGravityAcc-mean()-Z" measurement reading for the subject+activity.

"mean.of.tGravityAcc-std()-X"            
	Double. Represents the mean value of "tGravityAcc-std()-X" measurement reading for the subject+activity.

"mean.of.tGravityAcc-std()-Y"             
	Double. Represents the mean value of "tGravityAcc-std()-Y" measurement reading for the subject+activity.

"mean.of.tGravityAcc-std()-Z"             
	Double. Represents the mean value of "tGravityAcc-std()-Z" measurement reading for the subject+activity.

"mean.of.tBodyAccJerk-mean()-X"          
	Double. Represents the mean value of "tBodyAccJerk-mean()-X" measurement reading for the 
	subject+activity.

"mean.of.tBodyAccJerk-mean()-Y"           
	Double. Represents the mean value of "tBodyAccJerk-mean()-Y" measurement reading for the subject+activity.

"mean.of.tBodyAccJerk-mean()-Z"           
	Double. Represents the mean value of "tBodyAccJerk-mean()-Z" measurement reading for the subject+activity.

"mean.of.tBodyAccJerk-std()-X"           
	Double. Represents the mean value of "tBodyAccJerk-std()-X" measurement reading for the subject+activity.

"mean.of.tBodyAccJerk-std()-Y"            
	Double. Represents the mean value of "tBodyAccJerk-std()-Y" measurement reading for the subject+activity.

"mean.of.tBodyAccJerk-std()-Z"            
	Double. Represents the mean value of "tBodyAccJerk-std()-Z" measurement reading for the subject+activity.

"mean.of.tBodyGyro-mean()-X"             
	Double. Represents the mean value of "tBodyGyro-mean()-X" measurement reading for the subject+activity.

"mean.of.tBodyGyro-mean()-Y"              
	Double. Represents the mean value of "tBodyGyro-mean()-Y" measurement reading for the subject+activity.

"mean.of.tBodyGyro-mean()-Z"              
	Double. Represents the mean value of "tBodyGyro-mean()-Z" measurement reading for the subject+activity.

"mean.of.tBodyGyro-std()-X"              
	Double. Represents the mean value of "tBodyGyro-std()-X" measurement reading for the subject+activity.

"mean.of.tBodyGyro-std()-Y"               
	Double. Represents the mean value of "tBodyGyro-std()-Y" measurement reading for the subject+activity.

"mean.of.tBodyGyro-std()-Z"               
	Double. Represents the mean value of "tBodyGyro-std()-Z" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerk-mean()-X"         
	Double. Represents the mean value of "tBodyGyroJerk-mean()-X" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerk-mean()-Y"          
	Double. Represents the mean value of "tBodyGyroJerk-mean()-Y" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerk-mean()-Z"          
	Double. Represents the mean value of "tBodyGyroJerk-mean()-Z" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerk-std()-X"          
	Double. Represents the mean value of "tBodyGyroJerk-std()-X" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerk-std()-Y"           
	Double. Represents the mean value of "tBodyGyroJerk-std()-Y" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerk-std()-Z"           
	Double. Represents the mean value of "tBodyGyroJerk-std()-Z" measurement reading for the subject+activity.

"mean.of.tBodyAccMag-mean()"             
	Double. Represents the mean value of "tBodyAccMag-mean" measurement reading for the subject+activity.

"mean.of.tBodyAccMag-std()"               
	Double. Represents the mean value of "tBodyAccMag-std" measurement reading for the subject+activity.

"mean.of.tGravityAccMag-mean()"           
	Double. Represents the mean value of "tGravityAccMag-mean" measurement reading for the subject+activity.

"mean.of.tGravityAccMag-std()"           
	Double. Represents the mean value of "tGravityAccMag-std" measurement reading for the subject+activity.

"mean.of.tBodyAccJerkMag-mean()"          
	Double. Represents the mean value of "tBodyAccJerkMag-mean" measurement reading for the subject+activity.

"mean.of.tBodyAccJerkMag-std()"           
	Double. Represents the mean value of "tBodyAccJerkMag-std" measurement reading for the subject+activity.

"mean.of.tBodyGyroMag-mean()"            
	Double. Represents the mean value of "tBodyGyroMag-mean" measurement reading for the subject+activity.

"mean.of.tBodyGyroMag-std()"              
	Double. Represents the mean value of "tBodyGyroMag-std" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerkMag-mean()"         
	Double. Represents the mean value of "tBodyGyroJerkMag-mean" measurement reading for the subject+activity.

"mean.of.tBodyGyroJerkMag-std()"         
	Double. Represents the mean value of "tBodyGyroJerkMag-std" measurement reading for the subject+activity.

"mean.of.fBodyAcc-mean()-X"               
	Double. Represents the mean value of "fBodyAcc-mean()-X" measurement reading for the subject+activity.

"mean.of.fBodyAcc-mean()-Y"               
	Double. Represents the mean value of "fBodyAcc-mean()-Y" measurement reading for the subject+activity.

"mean.of.fBodyAcc-mean()-Z"              
	Double. Represents the mean value of "fBodyAcc-mean()-Y" measurement reading for the subject+activity.

"mean.of.fBodyAcc-std()-X"                
	Double. Represents the mean value of "fBodyAcc-std()-X" measurement reading for the subject+activity.

"mean.of.fBodyAcc-std()-Y"                
	Double. Represents the mean value of "fBodyAcc-std()-Y" measurement reading for the subject+activity.

"mean.of.fBodyAcc-std()-Z"               
	Double. Represents the mean value of "fBodyAcc-std()-Z" measurement reading for the subject+activity.

"mean.of.fBodyAcc-meanFreq()-X"           
	Double. Represents the mean value of "fBodyAcc-meanFreq()-X" measurement reading for the subject+activity.

"mean.of.fBodyAcc-meanFreq()-Y"           
	Double. Represents the mean value of "fBodyAcc-meanFreq()-Y" measurement reading for the subject+activity.

"mean.of.fBodyAcc-meanFreq()-Z"          
	Double. Represents the mean value of "fBodyAcc-meanFreq()-Z" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-mean()-X"           
	Double. Represents the mean value of "fBodyAccJerk-mean()-X" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-mean()-Y"           
	Double. Represents the mean value of "fBodyAccJerk-mean()-Y" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-mean()-Z"          
	Double. Represents the mean value of "fBodyAccJerk-mean()-Z" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-std()-X"            
	Double. Represents the mean value of "" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-std()-Y"            
	Double. Represents the mean value of "" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-std()-Z"           
	Double. Represents the mean value of "fBodyAccJerk-std()-Z" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-meanFreq()-X"       
	Double. Represents the mean value of "fBodyAccJerk-meanFreq()-X" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-meanFreq()-Y"       
	Double. Represents the mean value of "fBodyAccJerk-meanFreq()-Y" measurement reading for the subject+activity.

"mean.of.fBodyAccJerk-meanFreq()-Z"      
	Double. Represents the mean value of "fBodyAccJerk-meanFreq()-Z" measurement reading for the subject+activity.

"mean.of.fBodyGyro-mean()-X"              
	Double. Represents the mean value of "fBodyGyro-mean()-X" measurement reading for the subject+activity.

"mean.of.fBodyGyro-mean()-Y"              
	Double. Represents the mean value of "fBodyGyro-mean()-Y" measurement reading for the subject+activity.

"mean.of.fBodyGyro-mean()-Z"             
	Double. Represents the mean value of "fBodyGyro-mean()-Z" measurement reading for the subject+activity.

"mean.of.fBodyGyro-std()-X"               
	Double. Represents the mean value of "fBodyGyro-std()-X" measurement reading for the subject+activity.

"mean.of.fBodyGyro-std()-Y"               
	Double. Represents the mean value of "fBodyGyro-std()-Y" measurement reading for the subject+activity.

"mean.of.fBodyGyro-std()-Z"              
	Double. Represents the mean value of "fBodyGyro-std()-Z" measurement reading for the subject+activity.

"mean.of.fBodyGyro-meanFreq()-X"          
	Double. Represents the mean value of "fBodyGyro-meanFreq()-X" measurement reading for the subject+activity.

"mean.of.fBodyGyro-meanFreq()-Y"          
	Double. Represents the mean value of "fBodyGyro-meanFreq()-Y" measurement reading for the 
	subject+activity.

"mean.of.fBodyGyro-meanFreq()-Z"         
	Double. Represents the mean value of "fBodyGyro-meanFreq()-Z" measurement reading for the subject+activity.

"mean.of.fBodyAccMag-mean()"              
	Double. Represents the mean value of "fBodyAccMag-mean" measurement reading for the subject+activity.

"mean.of.fBodyAccMag-std()"               
	Double. Represents the mean value of "fBodyAccMag-std" measurement reading for the subject+activity.

"mean.of.fBodyAccMag-meanFreq()"         
	Double. Represents the mean value of "fBodyAccMag-meanFreq" measurement reading for the subject+activity.

"mean.of.fBodyBodyAccJerkMag-mean()"      
	Double. Represents the mean value of "fBodyBodyAccJerkMag-mean" measurement reading for the subject+activity.

"mean.of.fBodyBodyAccJerkMag-std()"       
	Double. Represents the mean value of "fBodyBodyAccJerkMag-std" measurement reading for the subject+activity.

"mean.of.fBodyBodyAccJerkMag-meanFreq()" 
	Double. Represents the mean value of "fBodyBodyAccJerkMag-meanFreq" measurement reading for the subject+activity.

"mean.of.fBodyBodyGyroMag-mean()"         
	Double. Represents the mean value of "fBodyBodyGyroMag-mean" measurement reading for the subject+activity.

"mean.of.fBodyBodyGyroMag-std()"          
	Double. Represents the mean value of "fBodyBodyGyroMag-std" measurement reading for the subject+activity.

"mean.of.fBodyBodyGyroMag-meanFreq()"    
	Double. Represents the mean value of "fBodyBodyGyroMag-meanFreq" measurement reading for the subject+activity.

"mean.of.fBodyBodyGyroJerkMag-mean()"     
	Double. Represents the mean value of "fBodyBodyGyroJerkMag-mean" measurement reading for the subject+activity.

"mean.of.fBodyBodyGyroJerkMag-std()"      
	Double. Represents the mean value of "fBodyBodyGyroJerkMag-std()" measurement reading for the subject+activity.

"mean.of.fBodyBodyGyroJerkMag-meanFreq()"
	Double. Represents the mean value of "fBodyBodyGyroJerkMag-meanFreq" measurement reading for the subject+activity.