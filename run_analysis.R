run_analysis <- function() { 
  #prerequisite dplyr package, tries to install or stop if not available
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
  
  # setup data for labels i'll need
  features <- read.table("./features.txt")
  activities_labels <- read.table("./activity_labels.txt")
  subject_test <- read.table("./test/subject_test.txt")
  subject_train <- read.table("./train/subject_train.txt")
  names(subject_test) <- "subject"
  names(subject_train) <- "subject"
  
  # correct names on activities 
  names(y_test) <- "activity"
  names(y_train) <- "activity"
  y_train$activity <- activities_labels[y_train$activity,2]
  y_test$activity <- activities_labels[y_test$activity,2]
  
  
  # correct names on X (data)
  x_test <- read.table("./test/X_test.txt",col.names=features$V2)
  x_train <- read.table("./train/X_train.txt",col.names=features$V2)
  
  # bind test and train datasets with their Y and Subject counterparts
  test.all <- cbind(subject_test,y_test,x_test)
  train.all <- cbind(subject_train,y_train,x_train)
  
  #filter for only cols i need
  grepFilter <- "mean|std|subject|activity"
  train.meanstd <- train.all[, grepl(grepFilter,names(train.all) ) ]
  test.meanstd <- test.all[, grepl(grepFilter,names(test.all) ) ]
  features.meanstd <- features[grepl(grepFilter,features$V2),2]
  
  #prepare list of names for tidy
  tidy.names <- c("subject","activity",
                  sapply(as.character(features.meanstd), 
                         function(x) { paste0("mean.of.",x) } ))
  
  #group with dyplr by subject and activity fields
  train.grouped <- group_by(train.meanstd,subject,activity)
  test.grouped <- group_by(test.meanstd,subject,activity)
  
  #summarise_Each of the sets
  test.tidy <- summarise_each(test.grouped,funs(mean))
  train.tidy <- summarise_each(train.grouped,funs(mean))
  
  #tidy up names
  names(train.tidy) <- tidy.names
  names(test.tidy) <- tidy.names
  
  #merge and write file
  joined <- rbind(test.tidy,train.tidy)
  write.table(joined,"joined.tidy.txt",row.name=FALSE)
  print("Tidy Data set created")
}