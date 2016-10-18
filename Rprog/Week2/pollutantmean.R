pollutantmean <- function(directory, pollutant, id = 1:332) {
	## 'directory' is a character vector of length 1 indicating 
	## the location of the CSV files

	## 'pollutant' is a charactr vector of length 1 indicating
	## the name of the pollutant for which we will calculate the
	## mean; either "sulfate" or "nitrate"
	
	## 'id' is an interger vector indicating the monitor ID numbers
	## to be used
	
	## Return the mean of the pollutant across all monitors list
	## in the 'id' vector (ignoring NA values)
	## NOTE: Do not round the result!
	
	## Vector for total pollution
	tpol <- vector(mode="numeric")
	
	## Extract values for selected pollutant from each station selected and combine into single vector
	for (station in id) {
		
		## Convert station to 3 digit number and create file path
		station3d <- formatC(station, flag=0, width=3)
		path <- paste(directory, "/", station3d, ".csv", sep = "")
		
		# Read in data from csv file for each station and append to tpol vector
		alldata <-read.csv(path)
		pdata <- eval( parse (text = paste("alldata$", pollutant, sep="")))
		tpol <- c(tpol, pdata)
	}
	
	## Calculate and output mean
	tpolmean = mean(tpol, na.rm = TRUE)
	print (tpolmean)
}