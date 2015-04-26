run_analysis <- function(save=F,file.name='tidyData.txt') {
  # function to tidy the Samsung data set
  # To run just type: 
  # source('run_analysis.R')
  # followed by:
  # run_analysis()
  # save = T if we want to save our tidy dataset to a file
  # file.name the name of the file to save to.
  # The data.table package needs to be installed 
  # install.packages("data.table")
  
  require(data.table)

  # loading the data
  df.test <- read.table("UCI HAR Dataset/test/X_test.txt")
  df.train <- read.table("UCI HAR Dataset/train/X_train.txt")
  df.features <- read.table("UCI HAR Dataset/features.txt")
  activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")
  names(activity.labels) <- c("Number","Activity")

  df.test.activity <- read.table("UCI HAR Dataset/test/y_test.txt")
  df.train.activity <- read.table("UCI HAR Dataset/train/y_train.txt")

  df.test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
  df.train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
  
  # merging training and testing sets
  df.all <- rbind(df.test,df.train)
  df.activity <- rbind(df.test.activity,df.train.activity)
  names(df.activity) <- "Activity.number"

  df.subject <- rbind(df.test.subject,df.train.subject)
  names(df.subject) <- "Subject"

  # Finds the mean and std variables in the data
  names(df.all) <- df.features[,2]
  variable.use <- names(df.all)[grep("(mean[^Freq]()|std())",names(df.all))]
  df.all.use <- df.all[,variable.use]

  # Joins the activity variable and subject variable
  df.all.use <- cbind(df.all.use,df.activity,df.subject)

  # Inputs the activity names instead of numbers
  df.use <- merge(df.all.use,activity.labels,by.x="Activity.number",by.y="Number",all.x=T)
  df.use <- df.use[,c('Subject','Activity',variable.use)]

  # calculates the averages by each subject and each activity
  dt.result <- data.table(df.use)
  setkeyv(dt.result,c('Subject','Activity'))
  dt.out <- dt.result[,lapply(.SD,mean),.SDcol=variable.use,by=c('Subject','Activity')]
  
  # cleaning the names of the variables in the dataset
  setnames(dt.out,names(dt.out),gsub("[^A-Za-z0-9_]","",names(dt.out)))
  
  # if we want to save our tidy data to a file
  if (save){
    write.table(dt.out,file=file.name,row.name=FALSE)
  }
  dt.out
}