
### README FOR PROJECT TIDY DATA


The tidy data is created by manipulating data from the Human Activity Recognition Using Smartphones Dataset. More details about the source of data can be found in codebook.md


The R code in run_analysis.R creates a tidy data set from the original source data.
It assumes that the original data is present in the same working directory. The code expects the following sub-directories:
/ train
/ test

If the original data is unzipped in the working directory the train and test sub-directories are created automatically



### The R-code does the following steps:
* Read the training data: X_train for the variables, subject_train for the subject ids, and Y_train for the activities
 * Make one dataset from the files read from the training data
 * Assign labels to subject id and activity columns

* Read the testing data: X_test for the variables, subject_test for the subject ids, and Y_test for the activities
 * Make one dataset from the files read from the testing data
 * Assign labels to subject id and activity columns

* Combine the training and testing data sets

* Read features.txt to get descriptive names
* Set names of combined data set using features.txt data
 * all names changed to lower case
 * -, (, ) and commas removed from variable names

* Extract only columns that have mean and std values

* Used melt() and dcast() functions of the reshape2 package to create a tidy data set
 * Calcualted means by subject id and activity 
 * Results in tidy data with 1 row per subject-activity pair
 * 30 subjects and 6 activities give 180 rows in the tidy dat aset
 * tiday data set saved as .txt file with column names, but no row names


## Reading tidy dataset
The tidy data set created with run_analysis.R can be read into R with the following command:

~~~
tidy_data2 <- read.table("tidy_data.txt",header=T)

~~~


