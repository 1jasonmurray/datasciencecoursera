plot1 <- function(){
	
	library(dplyr)
	
	## The purpose of this function is to generate a plot of total PM2.5
	## emissions from 1999-2008 to show their overall trend
	
	
	## Define directories for source data and output plots
	dataDir <- "./data"
	plotDir <- "./plots"
	
	## Read in data
	NEIdata <- paste(dataDir, "/summarySCC_PM25.rds", sep = "")
	SCCdata <- paste(dataDir, "/Source_Classification_Code.rds", sep = "")
	
	NEI <- readRDS(NEIdata)
	SCC <- readRDS(SCCdata)
	
	## Group data by year, sum, convert to millions of tons
	plotData <- NEI %>% group_by(year) %>% summarise(yearTotal <- sum(Emissions)/1e+06)
	
	
	
	## Plot the data and save as png
	plot1File <- paste(plotDir,"/plot1.png", sep = "")
	png(plot1File)

	plot(plotData$year, plotData$`yearTotal <- sum(Emissions)/1e+06`, 
	     type = "b", pch = 16, col = "blue", 
	     xlab = "Year",ylab = "PM2.5 Emissions (millions of tons)", main = "PM2.5 Emissions 1999-2008 US")
	abline(lm(plotData$`yearTotal <- sum(Emissions)/1e+06` ~ plotData$year), lty = "dashed", col = "red" )
	legend("topright", c("PM2.5", "Trend"), col = c("blue","red"), lty = c("solid", "dashed"))
	
	dev.off()
	
	
}