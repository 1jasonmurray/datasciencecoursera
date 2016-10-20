corr <- function(directory, threshold=0) {
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	
	## 'threshold' is a numeric vector of length 1 indicating the
	## number of completely observed observations ( on all
	## variables) required to compute the correlation between 
	## nitrage and sulfate; the default is 0
	
	## Return a number vector of correlations
	## NOTE: Do not round the result!
	
	## Create list of files in directory
	flist <- list.files(path = paste ("./", directory, sep=""))
	
	## Initialize numeric vector to hold correlation results
	corResults <- vector()
	
	
	for (file in flist){
		
		## Read data and determine number of complete cases
		path <- paste(directory, "/", file, sep = "")
		alldata <- read.csv(path)
		cc.tosum <- complete.cases(alldata)
		cc <- sum(cc.tosum)
		
		## Determine if complete cases are above threhold and append to corResults vector
		if (cc > threshold) {
			completeData <- na.omit(alldata)
			snCor <- cor(completeData$sulfate, completeData$nitrate)
			corResults <- append(corResults,snCor)
		}
		
	}
	
	## Output correlation vector
	print(corResults)
	
}