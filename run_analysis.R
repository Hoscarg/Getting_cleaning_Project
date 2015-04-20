# Coursera Getting and cleaning Project

# 1- Merges the training and test sets to create one data set

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)



# 2- Extracts only the measurements on the mean and standard deviation for each measurement

feat <- read.table("features.txt")
mstd <- grep("-(mean|std)\\(\\)", feat[, 2])
x_data2 <- x_data[, mstd]


# 3-Uses descriptive activity names to name the activities in the data set

activity <- read.table("activity_labels.txt")
y_data[, 1] <- activity[y_data[, 1], 2]


# 4- Appropriately labels the data set with descriptive variable names

names(x_data2) <- feat[mstd, 2]
names(y_data) <- "activity"
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
subject_data <- rbind(subject_train, subject_test)
names(subject_data) <- "subject"

data <- cbind(x_data2, y_data)


# 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject

data_set<-cbind(data,subject_data)

library(plyr)
averages <- ddply(data_set, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(averages, "averages.txt", row.name=FALSE)
