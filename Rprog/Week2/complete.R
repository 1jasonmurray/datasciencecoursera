complete <- function(directory, id = 1:332) {
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	
	## 'id' is an integer vector indicating the monitor ID numbers
	## to be used
	
	## Return a data frame of the form:
	## id 	nobs
	## 1	117
	## 2	1041
	## ...
	## where 'id' is the monitor ID number and 'nobs' is the
	## number of complete cases
	
	outframe <- data.frame( id = integer(), nobs = integer() )
	
	
	for (station in id){
		
		## Convert station to 3 digit number and create file path
		station3d <- formatC(station, flag=0, width=3)
		path <- paste(directory, "/", station3d, ".csv", sep = "")
		
		# Read in data from csv file for each station and determine complete cases
		alldata <-read.csv(path)
		cc.tosum <- complete.cases(alldata)
		cc <- sum(cc.tosum)
		
		# Append to the outframe
		newrow <- c(station, cc)
		outframe <- rbind(outframe, newrow)
		
	
	}
	
	## Output frame with counts
	colnames(outframe) <- c("id", "nobs")
	print(outframe)
}