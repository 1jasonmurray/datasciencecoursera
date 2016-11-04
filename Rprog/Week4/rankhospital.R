rankhospital <- function(state, outcome, rank = "best") {
	
	## Read outcome data into variable
	Data <- read.csv("outcome-of-care-measures.csv", na.strings="Not Available", stringsAsFactors=FALSE )
	
	## Determine outcome column to extract as well as check that outcome is valid
	if (identical(outcome, "pneumonia")) {
		column <- 23
	} else if (identical(outcome, "heart attack")) {
		column <- 11	
	} else if (identical(outcome, "heart failure")) {
		column <- 17
	} else  stop("invalid outcome")
	
	## Extract relevant columns from data and re-name for ease of use
	outcomeData <- Data[c(2,7,column)]
	colnames(outcomeData) <- c("Hospital", "State", "Mortality")
	
	## Check state by subsetting data by state and confirming rows exist
	stateData <- subset(outcomeData, State == state)
	rows <- nrow(stateData)
	if (rows < 1) 
	{stop("invalid state")}
	
	## Sort the data by Mortality Rate then Hospital Name, extract number of rows
	stateDataSorted <- stateData[order(stateData$Mortality,stateData$Hospital, na.last = NA),]
	srows <- nrow(stateDataSorted)
	
	## Check for valid rank and if valid return result
	if (rank == 1 || identical(rank, "best")) {
		print(stateDataSorted[1,1])
	} else if (identical(rank, "worst")) {
		print(stateDataSorted[srows,1])
	} else if (rank > srows) {
		print("NA")
	}  else print(stateDataSorted[rank,1])
	
}