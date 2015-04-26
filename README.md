# GettingAndCleaningData

## How to run the script.

The script `run_analysis.R` takes the raw Samsung data set
and creates a tidy data set with the average value of 
each mean and std variable. The means are calculated for
each subject and each activity.

To run the script in R type:

`source('run_analysis.R')`

`output <- run_analysis()`

The output should then be the tidy data set.

Optional you can choose to save the tidy data set to a file.
To do that type:

`run_analysis(save=T,file.name="tidyData.txt")`

or

`run_analysis(save=T)`

To read the saved data file type

`read.table('tidyData.txt',header=T)`

Requirements for running this script is:

1. The Samsung data folder should be in the working directory

2. data.table packages needs to be installed

## Description of what the code does.

This code will 

1. Read in the test data (x) , train data (x), features (names of the variables), activity labels, the test activity (y), the train activity (y), the test subject numbers, train subject numbers.

2. Joins all testing and training data to create `df.all` a data.frame with all the measurements, `df.subject` a data.frame with all subject id's and `df.activity` with all activities.

3. Finds all the variable names that show the mean and std. (The variables with the names mean() and std() in the names. We exclude the variables named meanFreq() since they are measuring a different thing. The names are then stored in `variable.use`.

4. We then save just the columns with those variables in `df.all.use`

5. `df.activity` and `df.subject` are then added to `df.all.use`

6. We merge the activity labels with `df.all.use` to get the activity labels instead of numbers and save that in `df.use`

7. We compute the mean for all the measures by subject and activity.

8. Final processing includes cleaning up the variable names and including the option to save the file.
