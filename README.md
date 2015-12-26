The "run_analysis.R" script performs the activities required for the Coursera "Getting and Cleaning Data" final project.

The source data is the "test" and "train" data from the following ZIP archive:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Full description is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

To run the R script, the ZIP archive must be extracted to your R home directory.  
The dplyr and reshape2 packages are required.

The R script performs the following:
*Read in the data
*Merge test and training data
*Merge activity numbers with corresponding activity names
*Select "mean" and "standard deviation" measurements
*"Melt" all measurements into a single "measurement_type" column
*Calculate the mean of all combinations of subject, activity and measurement

Please see "codebook.md" for a description of the final data frame ("step5") created by the script.

Thanks,

Anonymous Coursera student