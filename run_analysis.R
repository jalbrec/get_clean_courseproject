## Getting and cleaning the data course project script
## Prep: set the working directory, download file, extract the data. Not needed for grading.
        #setwd("./Getting and cleaning data/Project")
        #url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        #download.file(url, "SGdataset.zip")
        #unzip("SGdataset.zip")
        library(dplyr)
        library(tidyr)
        library(reshape2)
        
## Step 1. Merges the training and the test sets to create one data set.
        ## load and assign variable names from features.txt
        setwd("./UCI HAR Dataset")
        variables <- read.delim("features.txt", header = FALSE)
        
        ## Combine training data set and labels
        setwd("./train")
        ## load training dataset, labels and subjects and rename column names
        dataset_train <- read.delim("X_train.txt", header = FALSE, sep = "") 
        colnames(dataset_train) <- variables[,1]
        datalabel_train <- read.delim("y_train.txt", header = FALSE)
        colnames(datalabel_train) <- "activity_number"
        subject_train <- read.delim("subject_train.txt", header = FALSE)
        colnames(subject_train) <- "subject"
        ## combine subjects, labels and data into one dataframe and remove unused
        combn_train <- cbind(subject_train, datalabel_train, dataset_train)
        rm("datalabel_train", "dataset_train", "subject_train")
        
        ## Combine test data set and labels
        setwd('..')
        setwd("./test")
        ## load test dataset, labels and subjects and rename column names
        dataset_test <- read.delim("X_test.txt", header = FALSE, sep = "")
        colnames(dataset_test) <- variables[,1]
        datalabel_test <- read.delim("y_test.txt", header = FALSE)
        colnames(datalabel_test) <- "activity_number"
        subject_test <- read.delim("subject_test.txt", header = FALSE)
        colnames(subject_test) <- "subject"        
        ## combine subjects, labels and data into one dataframe and remove unused
        combn_test <- cbind(subject_test, datalabel_test, dataset_test)        
        rm("datalabel_test", "dataset_test", "subject_test")
        
        ## merge training and test datasets into combined
        combined <- rbind(combn_train, combn_test)
        rm("combn_test", "combn_train", "variables")
        
## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
        # create vectors from combined column names with "mean" or "std" in name
        meandat <- grep("*mean", names(combined), value = TRUE) 
        stddat <- grep("*std", names(combined), value = TRUE)
        combined2 <- tbl_df(combined) ## convert to data table
        ## select columns in combined using above vectors for mean and std
        combined2 <- select(combined, subject, activity_number, meandat, stddat)
        rm("combined", "meandat", "stddat")
        
## Step 3. Uses descriptive activity names to name the activities in the data set.
        setwd('..')
        ## activities is the key for activity number and name. load and assign.
        activities <- read.delim("activity_labels.txt", header = FALSE)
        activities <- separate(activities, V1, c("activity_number", "activity_name"), extra = "merge")
        ##merge combined2 from step 2 and activities above to create a new dataframe with activity names.
        combined3 <- merge(activities, combined2, by.x = "activity_number", by.y = "activity_number")
        rm("activities", "combined2")
        combined3 <- arrange(combined3, activity_number, subject)

## Step 4. Appropriately labels the data set with descriptive variable names
        combined4 <- select(combined3, -activity_number) #remove redundant activity_number column
        ## melt combined 4 to long dataframe
        combined4 <- melt(combined4, id.vars = c("activity_name", "subject")) 
        ## remove numbers, () and - from variable names and make lower case.
        combined4$variable <- gsub('[0-9]+', '', combined4$variable)
        combined4$variable <- tolower(combined4$variable)
        combined4$variable <- gsub("\\()", "", combined4$variable)
        combined4$variable <- gsub("\\-", "", combined4$variable)
               
## Step 5. From the data set in step 4, creates a second, independent tidy data 
        # set with the average of each variable for each activity and each subject.
        combined5 <- tbl_df(combined4) #create new data table 
        ## group data by activity, subject and variable and calculate summary means.
        combined5 <- group_by(combined5, activity_name, subject, variable)
        final_long <-  summarize(combined5, average = mean(value))
        rm("combined3", "combined4", "combined5")
        final_wide <- dcast(final_long, activity_name + subject ~ variable, value.var = "average")

## file output and read back in.         
setwd('..')
write.table(final_wide, "GaCA_finalwide.txt", row.name = FALSE, sep = "\t")
final <- read.delim("GaCA_finalwide.txt")


