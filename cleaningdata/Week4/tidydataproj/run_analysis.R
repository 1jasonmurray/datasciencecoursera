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
	download.file(dataURL,dataFile)
	unzip(dataFile, exdir = rawPath)
	
	
	
	## Create paths to files we are going to work with
	dataSetPath <- paste(rawPath, "/UCI HAR Dataset", sep = "")
	
	# General Files
	featureFile <- paste(dataSetPath, "/features.txt", sep = "")
	activityFile <- paste(dataSetPath, "/activity_labels.txt", sep = "")
	
	# Training Files
	trainDataFile <- paste(dataSetPath, "/train", "/X_train.txt", sep = "")
	trainLabelsFile <- paste(dataSetPath, "/train", "/y_train.txt", sep = "") 
	trainSubjectFile <- paste(dataSetPath, "/train", "/subject_train.txt", sep = "")
	
	# Test Files 
	testDataFile <- paste(dataSetPath, "/test", "/X_test.txt", sep = "")
	testLabelsFile <- paste(dataSetPath, "/test", "/y_test.txt", sep = "") 
	testSubjectFile <- paste(dataSetPath, "/test", "/subject_test.txt", sep = "")
	
	
	
	## Read in data from files to data frames, clean up feature name formating
	
	# Function to clean up feature formatting by removing "()" and replacing - and , with _
	fix_format <- function(x) { 
		y <- gsub("\\(|\\)","", x) 
		z <- gsub("\\-", "_", y)
		gsub(",","_",z)
	}
	
	#Import and clean index files
	features_import <- read.table(featureFile,col.names = c("index","feature"))
	features <- sapply(features_import$feature,fix_format)
	activities <- read.table(activityFile, col.names = c("index","activity"))
	
	# Training Data
	trainData <- read.table(trainDataFile, col.names = features)
	trainLabels <- read.table(trainLabelsFile, col.names = "label")
	trainSubjects <- read.table(trainSubjectFile, col.names = "Subject")
	
	# Test Data
	testData <- read.table(testDataFile, col.names = features)
	testLabels <- read.table(testLabelsFile, col.names = "label")
	testSubjects <- read.table(testSubjectFile, col.names = "Subject")
	
	
	
	## Merge test and training data sets
	Data <- rbind(trainData, testData)
	Labelsn <- rbind(trainLabels, testLabels)
	Subjects <- rbind(trainSubjects, testSubjects)
	
	
	
	## Replace numeric labels with desciprtive names from activities index
	Labels <- sapply(Labelsn$label, function(index) Labelsn$label <- activities[index, 2])

	
	
	##Merge all data into one frame with with cbind in the following order: Subjects, Labels, Data
	allData <- cbind(Subjects, Labels, Data)

	
	
	## Filter out only the mean and standard deviation data along with Subjects/Labels column
	filteredData <- select(allData,matches("Subject|Labels|.*mean.*|.*std.*"))

	# Write data to file all nice and formatted to work with later
	outfile <- paste(tidyPath, "/tidyUCIdata", sep = "")
	write.table(filteredData, file = outfile)
	
	
	
	## Calculate means for all variables sorted by subject and activity
	averagedData <- filteredData %>% group_by(Subject, Labels) %>% summarise_all(mean)

	# Write data containining averages to file
	outfile2 <- paste(tidyPath, "/tidyUCIdataMeans", sep = "")
	write.table(averagedData, file = outfile2)
	
	
}