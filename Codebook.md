## Codebook.md

This codebook describes the tidy dataset created by running `run_analysis.R`

Information about the original raw dataset can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Description of the variables in the tidy data set.

There are two categorical variables in this dataset. `Subject` and `Activity`. They describe which subject we have (1-30) and what activity they are perfoming (WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). We then have 66 measure variables. The tidy dataset gives the mean value of the measure for each subject and each activity. Thus the tidy dataset has 180 observations (30 subjects X 6 activities) with 68 values each observation. Further description of the measure variables is below.


| Variable | Description
-----------|-------------
| Subject | The subject ID's 
| Activity | The activity labels
| tBodyAccmeanX | Time domain signals of the body accelleration mean of the X-axis
| tBodyAccmeanY | Time domain signals of the body accelleration mean of the Y-axis
| tBodyAccmeanZ | Time domain signals of the body accelleration mean of the Z-axis
| tBodyAccstdX | Time domain signals of the body accelleration std of the X-axis
| tBodyAccstdY | Time domain signals of the body accelleration std of the Y-axis
| tBodyAccstdZ | Time domain signals of the body accelleration std of the Z-axis
| tGravityAccmeanX | Time domain signals of gravity accelleration mean of the X-axis
| tGravityAccmeanY | Time domain signals of gravity accelleration mean of the Y-axis
| tGravityAccmeanZ | Time domain signals of gravity accelleration mean of the Z-axis
| tGravityAccstdX | Time domain signals of gravity accelleration std of the X-axis
| tGravityAccstdY | Time domain signals of gravity accelleration std of the Y-axis
| tGravityAccstdZ | Time domain signals of gravity accelleration std of the Z-axis
| tBodyAccJerkmeanX | Time domain signals of the body accelleration jerk mean of the X-axis
| tBodyAccJerkmeanY | Time domain signals of the body accelleration jerk mean of the Y-axis
| tBodyAccJerkmeanZ | Time domain signals of the body accelleration jerk mean of the Z-axis
| tBodyAccJerkstdX | Time domain signals of the body accelleration jerk std of the X-axis
| tBodyAccJerkstdY | Time domain signals of the body accelleration jerk std of the Y-axis
| tBodyAccJerkstdZ | Time domain signals of the body accelleration jerk std of the Z-axis
| tBodyGyromeanX | Time domain signals of the body gyroscope mean of the X-axis
| tBodyGyromeanY | Time domain signals of the body gyroscope mean of the Y-axis
| tBodyGyromeanZ | Time domain signals of the body gyroscope mean of the Z-axis
| tBodyGyrostdX | Time domain signals of the body gyroscope std of the X-axis
| tBodyGyrostdY | Time domain signals of the body gyroscope std of the Y-axis
| tBodyGyrostdZ | Time domain signals of the body gyroscope std of the Z-axis
| tBodyGyroJerkmeanX | Time domain signals of the body gyroscope jerk mean of the X-axis
| tBodyGyroJerkmeanY | Time domain signals of the body gyroscope jerk mean of the Y-axis
| tBodyGyroJerkmeanZ | Time domain signals of the body gyroscope jerk mean of the Z-axis
| tBodyGyroJerkstdX | Time domain signals of the body gyroscope jerk std of the X-axis
| tBodyGyroJerkstdY | Time domain signals of the body gyroscope jerk std of the Y-axis
| tBodyGyroJerkstdZ | Time domain signals of the body gyroscope jerk std of the Z-axis
| tBodyAccMagmean | Time domain signals of the body accelleration magnitude mean
| tBodyAccMagstd | Time domain signals of the body accelleration magnitude std
| tGravityAccMagmean | Time domain signals of gravity accelleration magnitude mean
| tGravityAccMagstd | Time domain signals of gravity accelleration magnitude std
| tBodyAccJerkMagmean | Time domain signals of the body accelleration jerk magnitude mean
| tBodyAccJerkMagstd | Time domain signals of the body accelleration jerk magnitude std
| tBodyGyroMagmean | Time domain signals of the body gyroscope magnitude mean
| tBodyGyroMagstd | Time domain signals of the body gyroscope magnitude std
| tBodyGyroJerkMagmean | Time domain signals of the body gyroscope jerk magnitude mean
| tBodyGyroJerkMagstd | Time domain signals of the body gyroscope jerk magnitude std
| fBodyAccmeanX | Fast Fourier Transformation of the body accelleration mean of the X-axis
| fBodyAccmeanY | Fast Fourier Transformation of the body accelleration mean of the Y-axis
| fBodyAccmeanZ | Fast Fourier Transformation of the body accelleration mean of the Z-axis
| fBodyAccstdX | Fast Fourier Transformation of the body accelleration std of the X-axis
| fBodyAccstdY | Fast Fourier Transformation of the body accelleration std of the Y-axis
| fBodyAccstdZ | Fast Fourier Transformation of the body accelleration std of the Z-axis
| fBodyAccJerkmeanX | Fast Fourier Transformation of the body accelleration jerk mean of the X-axis
| fBodyAccJerkmeanY | Fast Fourier Transformation of the body accelleration jerk mean of the Y-axis
| fBodyAccJerkmeanZ | Fast Fourier Transformation of the body accelleration jerk mean of the Z-axis
| fBodyAccJerkstdX | Fast Fourier Transformation of the body accelleration jerk std of the X-axis
| fBodyAccJerkstdY | Fast Fourier Transformation of the body accelleration jerk std of the Y-axis
| fBodyAccJerkstdZ | Fast Fourier Transformation of the body accelleration jerk std of the Z-axis
| fBodyGyromeanX | Fast Fourier Transformation of the body gyroscope mean of the X-axis
| fBodyGyromeanY | Fast Fourier Transformation of the body gyroscope mean of the Y-axis
| fBodyGyromeanZ | Fast Fourier Transformation of the body gyroscope mean of the Z-axis
| fBodyGyrostdX | Fast Fourier Transformation of the body gyroscope std of the X-axis
| fBodyGyrostdY | Fast Fourier Transformation of the body gyroscope std of the Y-axis
| fBodyGyrostdZ | Fast Fourier Transformation of the body gyroscope std of the Z-axis
| fBodyAccMagmean | Fast Fourier Transformation of the body accelleration magnitude mean
| fBodyAccMagstd | Fast Fourier Transformation of the body accelleration magnitude std
| fBodyBodyAccJerkMagmean | Fast Fourier Transformation of the body accelleration jerk magnitude mean
| fBodyBodyAccJerkMagstd | Fast Fourier Transformation of the body accelleration jerk magnitude std
| fBodyBodyGyroMagmean | Fast Fourier Transformation of the body gyroscope magnitude mean
| fBodyBodyGyroMagstd | Fast Fourier Transformation of the body gyroscope magnitude std
| fBodyBodyGyroJerkMagmean | Fast Fourier Transformation of the body gyroscope jerk magnitude mean
| fBodyBodyGyroJerkMagstd | Fast Fourier Transformation of the body gyroscope jerk magnitude std
