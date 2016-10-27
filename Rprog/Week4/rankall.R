rankall <- function(outcome, rank = "best") {
	
	## Read outcome data into variable
	Data <- read.csv("outcome-of-care-measures.csv", na.strings="Not Available", stringsAsFactors=FALSE )
	
	## Determine outcome column to extract as well as check that outcome is valid
	if (identical(outcome, "pneumonia")) {
		column <- 23
	} else if (identical(outcome, "heart attack")) {
		column <- 11	
	} else if (identical(outcome, "heart failure")) {
		column <- 35
	} else  stop("invalid outcome")
	
	## Extract relevant columns from data and re-name for ease of use
	outcomeData <- Data[c(2,7,column)]
	colnames(outcomeData) <- c("Hospital", "State", "Mortality")
	
	## Initialize output data frame to store results, create state list and cycle through each to generate results
	output <- data.frame(Hospital = character(), State = character() )
	states <- unique(outcomeData$State)
	
	for (state in states) {
		
		##Subset out data for state
		stateData <- subset(outcomeData, State == state)
	
		## Sort the data by Mortality Rate then Hospital Name, extract number of rows
		stateDataSorted <- stateData[order(stateData$Mortality,stateData$Hospital, na.last = NA),]
		srows <- nrow(stateDataSorted)
			
		## Check for valid rank and if valid return result
		if (rank == 1 || identical(rank, "best")) {
			Hospital <- stateDataSorted[1,1]
		} else if (identical(rank, "worst")) {
			Hospital <- stateDataSorted[srows,1]
		} else if (rank > srows) {
			Hospital <- print("NA")
		} else 	Hospital <- stateDataSorted[rank,1]
		
		
		## Add data for state to output data frame
		newrow <- data.frame(Hospital, state)
		output <- rbind(output, newrow)
		
	}
	
	
	## Print results 
	colnames(output) <- c("Hospital", "State")
	output
}