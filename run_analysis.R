# load train data and set to variables
x_train <-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <-read.table("./UCI HAR Dataset/train/y_train.txt")
sub_train <-read.table("./UCI HAR Dataset/train/subject_train.txt")

# load test data and set to variables
x_test <-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <-read.table("./UCI HAR Dataset/test/y_test.txt")
sub_test <-read.table("./UCI HAR Dataset/test/subject_test.txt")

# load feature vector and set to variable
feature_data <-read.table("./UCI HAR Dataset/features.txt")

# load activity labels and set to variable
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")

# assign column names to x_train dataset
colnames(x_train) <-feature_data[,2]

# assign column names to x_test dataset
colnames(x_test) <-feature_data[,2]

# assigning column names to y_train, y_test, sub_train, and sub_test datasets
colnames(y_train) <- "number"
colnames(y_test) <- "number"
colnames(sub_train) <- "subject"
colnames(sub_test) <- "subject"
colnames(activity_labels) <- c('number','activity')

# Extracts only the measurements on the mean and std for each measurements
select_cols <- grep("mean\\(\\)|std\\(\\)", colnames(x_train))
x_train <- x_train[,select_cols]

select_cols <- grep("mean\\(\\)|std\\(\\)", colnames(x_test))
x_test <- x_test[,select_cols]

# merging datasets into one dataset
trainFull <-cbind(y_train, sub_train,x_train)
testFull <-cbind(y_test, sub_test,x_test)
dataFull <- rbind(trainFull, testFull)

# Adding descriptive activity names to name the activities in the data set
dataFullActivity <- merge(dataFull, activity_labels, by = 'number', all.x=TRUE)

# Independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- aggregate(. ~subject + activity, dataFullActivity, mean)
tidy_data <- tidy_data[order(tidy_data$subject, tidy_data$activity),]

# create new table in .txt format with resulting dataset
write.table(tidy_data, file = "./Week4Project/week4Project_tidy.txt", row.names = FALSE)








