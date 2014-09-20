
# Getting and Cleaning Data
## Aim of the project
This project is part of ongoing Getting & Cleaning Data encompassed within the 
scientific specialization of data conducted by Johns Hopkings  through the Coursera platform.

The main objective of this project can be summarized in the following points:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard
   deviation for each measurement.
3. Uses descriptive names to name the activity in activities
   the data set
4. Appropriately labels the data set with descriptive names variable.
5. From the data set in step 4 Creates a second, independent
   tidy data set with the average of each varying for each
   activity and each subject.

## Items that make up this project
1. run_analisys.R: Code written in R language that generates the tidy data set 
2. Codebook.md: Contains descriptions variable, tidy example of the data, and a detail
the overall output of the project
3. Tidydata.txt: Example file with tidy data generated from run_analisys.R

## Setup and execution instructions
In order to make a correct implementation, it is necessary to follow these
steps:

1. Download the source of information from files:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Extract the files and include them in the working directory:
> getwd()
[1] "/Users/Paco"

3. Save the file with the code run_analysis.R 

4. Function call to generate the tidy data set
> source("run_analysis.R")
> tidydata<-run_analysis()
