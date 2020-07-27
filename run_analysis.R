#download and unzip the dataset from the url("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip") and save it in the project folder
#Features
features<- read.table("./UCI HAR Dataset/features.txt")
#Activity labels
act<- read.table("./UCI HAR Dataset/activity_labels.txt")


#Generating training dataset
#Subjects(30 subject numbered from 1 to 30)
subject<- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

#Activities performed by subjects(numbered from 1 to 6)
activity<- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")

#Features values for all the observations from the subject and activity dataset
train<- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$V2)

#Merging the activity,subject and train dataset
train<- cbind(subject,activity,train)


#Generating test dataset
#Subjects(30 subject numbered from 1 to 30)
subject<- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

#Activities performed by subjects(numbered from 1 to 6)
activity<- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")

#Features values for all the observations from the subject and activity dataset
test<- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$V2)

#Merging the activity,subject and test dataset
test<- cbind(subject,activity,test)


#Merging training and test dataset
data<- rbind(train,test)
#labeling the activities
data$activity<- act[data$activity,"V2"]

#Extracting only the measurements on the mean and standard deviation for each measurement.
data<- select(data, subject, activity, contains("mean"), contains("std"))

#tidy data set with the average of each variable for each activity and each subject.
tidy_data<- data %>% group_by(subject, activity) %>% summarise_all(funs(mean))
write.table(tidy_data, file = "tidy_data.txt")

