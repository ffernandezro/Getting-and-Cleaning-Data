library(data.table)
# The purpose of this script is as follows,with the following 
# information as a data source:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#       -     1. Merges the training and the test sets to create one data set.
#       -     2. Extracts only the measurements on the mean and standard 
#                  deviation for each measurement. 
#       -     3. Uses descriptive activity names to name the activities in 
#                the data set
#       -     4. Appropriately labels the data set with descriptive variable 
#                names. 
#       -     5. From the data set in step 4, creates a second, independent 
#                tidy data set with the average of each variable for each 
#                activity and each subject.

# Function that captures the source information that will work
get_working_data <- function () {
        library(data.table)
        # Get, formating and subsetting features data 
        working_features <- read.table('features.txt', col.names = c('ord', 'feat'))
        working_features$feat <- gsub ('[-()]', '', working_features$feat)
        working_features <- subset(working_features, grepl('(mean|std)', 
                                                           working_features$feat
                                                           )
                                   )
        # Get labels data set
        working_labels <- read.table('activity_labels.txt', 
                                     col.names = c('ord', 'lab'))
        # Get the train data set with only the measurements on the mean and 
        # standard deviation for each measurement
        working_x_train_data <- read.table('train/X_train.txt')[,working_features$ord]
        names(working_x_train_data) <- working_features$feat
        
        working_y_train_data <- read.table('train/y_train.txt')
        working_x_train_data$label <- factor(working_y_train_data[,1], 
                                             levels=working_labels$ord, 
                                             labels=working_labels$lab
                                             )
        working_subject_train <- read.table('train/subject_train.txt')
        working_x_train_data$subject <- factor(working_subject_train[,1])
        working_train_data <- data.table(working_x_train_data)
        
        # Get the test data set with only the measurements on the mean and 
        # standard deviation for each measurement
        working_x_test_data <- read.table('test/X_test.txt')[,working_features$ord]
        names(working_x_test_data) <- working_features$feat
        
        working_y_test_data <- read.table('test/y_test.txt')
        working_x_test_data$label <- factor(working_y_test_data[,1], 
                                             levels=working_labels$ord, 
                                             labels=working_labels$lab
        )
        working_subject_test <- read.table('test/subject_test.txt')
        working_x_test_data$subject <- factor(working_subject_test[,1])
        working_test_data <- data.table(working_x_test_data)
        
        # Now i can merge data, the training and the test sets to create one data set
        rbind(working_train_data, working_test_data)      
}
run_analysis <- function () {
        #       -     1. Merges the training and the test sets to create one data set.
        #       -     2. Extracts only the measurements on the mean and standard 
        #                  deviation for each measurement. 
        #       -     3. Uses descriptive activity names to name the activities in 
        #                the data set
        #       -     4. Appropriately labels the data set with descriptive variable 
        #                names.
        rawdata <- get_working_data ()
        #       -     5. From the data set in step 4, creates a second, independent 
        #                tidydata set with the average of each variable for each 
        #                activity and each subject.
        tidydata <- rawdata[, lapply(.SD, mean), by=list(label, subject)]
        # Write the rawdata and tidydata to csv files
        #write.csv(rawdata, file = 'rawdata.csv', row.names = FALSE)
        #write.csv(tidydata, file = 'tidydata.csv',row.names = FALSE)
        
        # Write the rawdata and tidydata to txt files
        write.table(rawdata, "rawdata.txt", sep=";", row.names = FALSE) 
        write.table(tidydata, "tidydata.txt", sep=";",row.names = FALSE) 
        
        # Return tydata and end
        tidydata
}