This is the codebook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The transformed variables:
"1" "activity_name"
"2" "subject"
"3" " fbodyaccjerkmeanfreqx"
"4" " fbodyaccjerkmeanfreqy"
"5" " fbodyaccjerkmeanfreqz"
"6" " fbodyaccjerkmeanx"
"7" " fbodyaccjerkmeany"
"8" " fbodyaccjerkmeanz"
"9" " fbodyaccjerkstdx"
"10" " fbodyaccjerkstdy"
"11" " fbodyaccjerkstdz"
"12" " fbodyaccmagmean"
"13" " fbodyaccmagmeanfreq"
"14" " fbodyaccmagstd"
"15" " fbodyaccmeanfreqx"
"16" " fbodyaccmeanfreqy"
"17" " fbodyaccmeanfreqz"
"18" " fbodyaccmeanx"
"19" " fbodyaccmeany"
"20" " fbodyaccmeanz"
"21" " fbodyaccstdx"
"22" " fbodyaccstdy"
"23" " fbodyaccstdz"
"24" " fbodybodyaccjerkmagmean"
"25" " fbodybodyaccjerkmagmeanfreq"
"26" " fbodybodyaccjerkmagstd"
"27" " fbodybodygyrojerkmagmean"
"28" " fbodybodygyrojerkmagmeanfreq"
"29" " fbodybodygyrojerkmagstd"
"30" " fbodybodygyromagmean"
"31" " fbodybodygyromagmeanfreq"
"32" " fbodybodygyromagstd"
"33" " fbodygyromeanfreqx"
"34" " fbodygyromeanfreqy"
"35" " fbodygyromeanfreqz"
"36" " fbodygyromeanx"
"37" " fbodygyromeany"
"38" " fbodygyromeanz"
"39" " fbodygyrostdx"
"40" " fbodygyrostdy"
"41" " fbodygyrostdz"
"42" " tbodyaccjerkmagmean"
"43" " tbodyaccjerkmagstd"
"44" " tbodyaccjerkmeanx"
"45" " tbodyaccjerkmeany"
"46" " tbodyaccjerkmeanz"
"47" " tbodyaccjerkstdx"
"48" " tbodyaccjerkstdy"
"49" " tbodyaccjerkstdz"
"50" " tbodyaccmagmean"
"51" " tbodyaccmagstd"
"52" " tbodyaccmeanx"
"53" " tbodyaccmeany"
"54" " tbodyaccmeanz"
"55" " tbodyaccstdx"
"56" " tbodyaccstdy"
"57" " tbodyaccstdz"
"58" " tbodygyrojerkmagmean"
"59" " tbodygyrojerkmagstd"
"60" " tbodygyrojerkmeanx"
"61" " tbodygyrojerkmeany"
"62" " tbodygyrojerkmeanz"
"63" " tbodygyrojerkstdx"
"64" " tbodygyrojerkstdy"
"65" " tbodygyrojerkstdz"
"66" " tbodygyromagmean"
"67" " tbodygyromagstd"
"68" " tbodygyromeanx"
"69" " tbodygyromeany"
"70" " tbodygyromeanz"
"71" " tbodygyrostdx"
"72" " tbodygyrostdy"
"73" " tbodygyrostdz"
"74" " tgravityaccmagmean"
"75" " tgravityaccmagstd"
"76" " tgravityaccmeanx"
"77" " tgravityaccmeany"
"78" " tgravityaccmeanz"
"79" " tgravityaccstdx"
"80" " tgravityaccstdy"
"81" " tgravityaccstdz"
