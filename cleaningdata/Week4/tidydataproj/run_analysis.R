run_analysis <- function(dataDir = "."){
	
	## The purpose of this function is to download, merge, and tidy up the data
	## from the following data set:
	## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	## Which can be donwloaded from here:
	## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	
	## It takes a single directory "dataDir" as an argument  
	## and will use this location to create subdirectories to download the 
	## raw data "<dataDir>/raw" as well as to store the tidied data in 
	## "<dataDir>/tidied"
	
	## Confirm existence of data directory or stop and return error
	if (!dir.exists(dataDir)) {stop("Data directory does not exist")}
	
	
	
	## Create working data directories if they don't exist
	rawPath <- paste(dataDir, "/raw", sep = "")
	tidyPath <- paste(dataDir,"/tidied", sep = "")
	
	if (!dir.exists(rawPath))  {dir.create(rawPath)}
	if (!dir.exists(tidyPath)) {dir.create(tidyPath)}
	
	
	
	## Download and unzip the data set
	dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	dataFile <- paste(rawPath, "/dataset.zip", sep = "" )
	
	#download.file(dataURL,dataFile)
	#unzip(dataFile, exdir = rawPath)
	
	
	
	## Create paths to files we are going to work with
	dataSetPath <- paste(rawPath, "/UCI HAR Dataset", sep = "")
	
	# General Files
	featureFile <- paste(dataSetPath, "/features.txt", sep = "")
	activityFile <- paste(dataSetPath, "/activity_labels.txt", sep = "")
	
	# Train Files
	trainDataFile <- paste(dataSetPath, "/train", "/X_train.txt", sep = "")
	trainLabelsFile <- paste(dataSetPath, "/train", "/y_train.txt", sep = "") 
	trainSubjectFile <- paste(dataSetPath, "/train", "/subject_train.txt", sep = "")
	
	# Test Files 
	testDataFile <- paste(dataSetPath, "/test", "/X_test.txt", sep = "")
	testLabelsFile <- paste(dataSetPath, "/test", "/y_test.txt", sep = "") 
	testSubjectFile <- paste(dataSetPath, "/test", "/subject_test.txt", sep = "")
	
	
	
	## Read in data from files to data frames		
	features <- read.table(featureFile,col.names = c("index","feature"))
	activities <- read.table(activityFile, col.names = c("index","activity"))
	
	# Training Data
	trainData <- read.table(trainDataFile, col.names = features$feature)
	trainLabels <- read.table(trainLabelsFile, col.names = "label")
	trainSubjects <- read.table(trainSubjectFile, col.names = "subject")
	
	# Test Data
	testData <- read.table(testDataFile, col.names = features$feature)
	testLabels <- read.table(testLabelsFile, col.names = "label")
	testSubjects <- read.table(testSubjectFile, col.names = "subject")
	
	
}