plot4 <- function(){
	
	library(dplyr)
	library(ggplot2)
	
	## The purpose of this function is to generate a plot of total PM2.5
	## emissions from coal 1999-2008 in the US to show the overall trend
	
	
	## Define directories for source data and output plots
	dataDir <- "./data"
	plotDir <- "./plots"
	
	## Read in data
	NEIdata <- paste(dataDir, "/summarySCC_PM25.rds", sep = "")
	SCCdata <- paste(dataDir, "/Source_Classification_Code.rds", sep = "")
	
	NEI <- readRDS(NEIdata)
	SCC <- readRDS(SCCdata)
	
	## Find Coal Sources by searching for Coal in the EI.Sector column
	SCCcoal <- filter(SCC, grepl("Coal", EI.Sector, ignore.case = TRUE))
	coalCodes <- unique(SCCcoal$SCC)
	
	## Group data by year, convert to thousands of tons
	plotData <- NEI %>% 
		filter(SCC %in% coalCodes) %>%
		group_by(year) %>% 
		summarise(sum(Emissions)/1000)
	#update names
	names(plotData) <- c("Year", "Emissions")
	
	
	## Plot the data and save as png
	plot4File <- paste(plotDir,"/plot4.png", sep = "")
	png(plot4File)

	p4 <- ggplot(plotData, aes(Year, Emissions, color = "PM2.5")) +
		geom_point() +
		geom_line() +
		geom_smooth(method = "lm", se = FALSE, lty = "dashed", aes(colour = "Trend line")) +
		labs(y = "Emissions (tons)", title = "PM2.5 Emissions from Coal 1999-2008 US") 
	
	print(p4)
	dev.off()
	
	
}
