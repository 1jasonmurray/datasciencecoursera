#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Recommended Diamond Price"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("carat",
                   "Number of carets",
                   min = .2,
                   max = 5.01,
                   value = 1),
       radioButtons("cut",
       	    "Cut",
       	    c('Fair' = 'F','Good' = 'G','Very Good' = 'VG','Premium' = 'P', 'Ideal' = 'I'),
       	    inline = TRUE),
       radioButtons("Color",
       	     "Color",
       	     c('D' = 'D','E' = 'E','F' = 'F','G' = 'G', 'H' = 'H', 'I' = 'I', 'J' = 'J'),
       	     inline = TRUE),
       radioButtons("clarity",
       	     "Clarity",
       	     c('I1' = 'I1','SI2' = 'SI2','SI1' = 'SI1','VS2' = 'VS2', 'VS1' = 'VS1', 'VVS2' = 'VVS2', 'VVS1' = 'VVS1', 'IF' = 'IF'),
       	     inline = TRUE)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
