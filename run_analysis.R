features<- read.table("./UCI HAR Dataset/features.txt")


act<- read.table("./UCI HAR Dataset/activity_labels.txt")


subject<- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")


activity<- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")


train<- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$V2)


train<- cbind(subject,activity,train)


subject<- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")


activity<- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")


test<- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$V2)


test<- cbind(subject,activity,test)


data<- rbind(train,test)


data$activity<- act[data$activity,"V2"]


data<- select(data, subject, activity, contains("mean"), contains("std"))


tidy_data<- data %>% group_by(subject, activity) %>% summarise_all(funs(mean))


write.table(tidy_data, file = "tidy_data.txt")

