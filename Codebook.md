
## Variable List

- "x_train" contains the data from the x training set
- "y_train" contains the data from the y training set
- "x_test" contains the data from the x test set 
- "y_test", contains the data from the y test set
- "feat", contains the data from the features set
- "activity", contains a correspondance between an index and proper descriptive activity names
- "subject_train", contains the data from the subject training set
- "subject_test" contains the data from the subject test set

- "x_data", contain data table that bind x training and test sets 
- "y_data" contain data table that bind y training and test sets. It shows descritive activity names
- "subject_data" contains the table that bind subject training and test set

- "mstd" contains indexes and their corresponding descriptive names only of measured variables related to a mean or a std deviation. These are taken from original "feat" data. 

- "x_data2" contains data from x_data but only those variables that refer to measurementes on the mean or std

- "data" is one data set that results from binding "x_data2" and "y_data". 
It contains only variables that refer to measurementes on the mean or std and also includes the activity in each observation

- "data_set" is the final data_set that
It contains only variables that refer to measurementes on the mean or std ("x_data2)
It also includes the activity in each observation ("y_data")
It also includes th subject involved in the experiment ("subject_data")

- "averages" is a file that shows the average of measurements on the mean/stdv (data from "data_set") by each activity 
and each subject.

