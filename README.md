---
title: "CodeBook.md"
author: "Aditya Raj Agrawal"
date: "27/07/2020"
output: html_document
---

# Human Activity Recognition Using Smartphones Dataset

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.


### Data Insight

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, readings were captured for 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
Further details of the dataset are given in the readme.txt file in the dataset folder.


### Approach

To clean the dataset for analysis my approach is as follows:

1. Creating the training dataset from the required files.
2. Creating the test dataset.
3. Merging the training and test dataset together.
4. Extracting only the measurements on the mean and standard deviation for each measurement.
5. Creating a tidy data set with the average of each variable for each activity and each subject.


### Note
The code for the analysis is given in run_analysis.R file.