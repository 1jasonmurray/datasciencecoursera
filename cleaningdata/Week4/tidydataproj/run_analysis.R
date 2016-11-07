run_analysis <- function(dataDir = "."){
	
	## The purpose of this function is to download, merge, and tidy up the data
	## from the following data set:
	## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	## Which can be donwloaded from here:
	## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	
	## It takes a single directory "dataDir" as an argument  
	## and will use this location to create a subdirectory to both download the 
	## raw data "<dataDir>/raw" as well as tidy up the data and place it in 
	## "<dataDir>/tidied"
	
	## Confirm existence of data directory or stop and return error
	if (!dir.exists(dataDir)) {stop("Data Directory does not exist")}
	
	## Create required subdirectories if they don't exist and download data
	dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	rawpath <- paste(datadir, "/raw")
	tidypath <- paste(datadir,"/tidied")
	
	if (!dir.exists(rawpath))  {dir.create(rawpath)}
	if (!dir.exists(tidypath)) {dir.create(tidypath)}
	
	download.file(dataURL,rawpath)
}