plot6 <- function(){
	
	library(dplyr)
	library(ggplot2)
	
	## The purpose of this function is to generate a plot of total PM2.5
	## emissions from vehicles from 1999-2008 in Baltimore and LA to show
	## the differences and trend
	
	
	## Define directories for source data and output plots
	dataDir <- "./data"
	plotDir <- "./plots"
	
	## Read in data
	NEIdata <- paste(dataDir, "/summarySCC_PM25.rds", sep = "")
	SCCdata <- paste(dataDir, "/Source_Classification_Code.rds", sep = "")
	
	NEI <- readRDS(NEIdata)
	SCC <- readRDS(SCCdata)
	
	## Find Vehicle Sources by searching for Vehicle in the EI.Sector column
	SCCvehicle <- filter(SCC, grepl("Vehicles", EI.Sector, ignore.case = TRUE))
	vehicleCodes <- unique(SCCvehicle$SCC)
	
	
	## Group data by year and find emission total for Baltiomore and LA 
	## add column for County
	plotDataBal <- NEI %>% 
		filter(fips==24510) %>%
		filter(SCC %in% vehicleCodes) %>%
		group_by(year) %>% 
		summarise(sum(Emissions)) %>%
		mutate(County="Baltimore")
		
	plotDataLA <- NEI %>% 
		filter(fips=="06037") %>%
		filter(SCC %in% vehicleCodes) %>%
		group_by(year) %>% 
		summarise(sum(Emissions)) %>%
		mutate(County="Los Angeles")
	
	## Combine data for both into one data frame
	plotData <- rbind(plotDataBal, plotDataLA)
	
	#update names
	names(plotData) <- c("Year", "Emissions", "County")
	
	
	## Plot the data and save as png
	plot6File <- paste(plotDir,"/plot6.png", sep = "")
	png(plot6File)
	
	p6 <- ggplot(plotData, aes(Year, Emissions, color = "PM2.5")) +
		geom_point() +
		geom_line() +
		facet_grid(. ~ County, scales = "free") +
		geom_smooth(method = "lm", se = FALSE, lty = "dashed", aes(colour = "Trend line")) +
		labs(y = "Emissions (tons)", title = "PM2.5 emissions from vechicles 1999-2008 Baltimore/LA") 
	
	print(p6)
	dev.off()
	
	
}
