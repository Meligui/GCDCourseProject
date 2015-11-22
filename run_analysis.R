##This file is used to produce a tidy data set from the available data provided for this course project
##The goal is to summarize the data to produce a data set with the average of each variable for each 
##activity and each subject.

run_analysis<-function(){
##First, we need to read the data files, the following two files are the same for both the test and train data
##and naturally will be only read once
    features<-read.table("features.txt")
    activity_labels<-read.table("activity_labels.txt")

##Second, we read the data for the test files
    subject_test<-read.table("subject_test.txt") 
        colnames(subject_test)<-"Subject_ID"
    y_test<-read.table("y_test.txt")
    X_test<-read.table("X_test.txt",col.names = features$V2) #using the feature names as column names for X_test

    #In the following line we are linking the numbers in y_test to the corresponding activity as specified in activity_labels
    y_test2<-merge(y_test, activity_labels, sort=FALSE) 
        colnames(y_test2)[2]<-"Activity"

    #in the following lines we are binding the data to form a single table linking the subject id with the activities
    #and the measurements resulting in the table Test_Data
    X_test_w_activ <-cbind(y_test2$Activity,X_test)
        colnames(X_test_w_activ)[1]<-"Activity"
    Test_Data <- cbind(subject_test, X_test_w_activ)

##Third, we do the exact same process we did with the test files to the train files
    subject_train<-read.table("subject_train.txt")
        colnames(subject_train)<-"Subject_ID"
    y_train<-read.table("y_train.txt")
    X_train<-read.table("X_train.txt",col.names = features$V2)
        y_train2<-merge(y_train, activity_labels, sort=FALSE)
        colnames(y_train2)[2]<-"Activity"
    X_train_w_activ <-cbind(y_train2$Activity,X_train)
        colnames(X_train_w_activ)[1]<-"Activity"
    Train_Data <- cbind(subject_train, X_train_w_activ)

##Fourth, we rbind the two data frames Test_Data and Train_Data to get the data frame of all the data merged
    Complete_Data<-rbind(Test_Data,Train_Data)

##Fifth, we use the dplyr library to select only the columns that contain mean or standard deviation
    library(dplyr)
    Mean_Std_Data<-select(Complete_Data,Subject_ID,Activity, contains("mean..",ignore.case=FALSE), contains("std",ignore.case=TRUE))

##Sixth, we group the data then summarize to get the mean value of each variable for each subject_id and activity
    Data_Grouped <- group_by(Mean_Std_Data, Subject_ID, Activity)
    Summarized_Data<-summarize_each(Data_Grouped, funs(mean), -Subject_ID, -Activity)
    
##Finally, we print the final tidy data set to a text file
    write.table(Summarized_Data, file="Summarized_Data.txt", row.names=FALSE)
}