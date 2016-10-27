best <- function(state, outcome) {
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
	
	# Check state by subsetting data by state and confirming rows exist
	stateData <- subset(outcomeData, State == state)
	rows <- nrow(stateData)
	if (rows < 1) 
		{stop("invalid state")}
	

	## Return hospital name in that state with lowest 30-day death
	## rate
	stateDataSorted <- stateData[order(stateData$Mortality,stateData$Hospital),]
	print(stateDataSorted[1,1])
	
}