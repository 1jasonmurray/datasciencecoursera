#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(caret)


##Define server logic required to draw a histogram
shinyServer(function(input, output) {

  ##Build model for price prediction	   
  model_glm <- reactive({
    
    train(price ~ carat + cut + color + clarity, data=diamonds, method='glm')
   
  })
  
  output$price <- renderText({
  	
  	
  	##Create data frame from new input
  	inputData <- data.frame(carat=input$carat, cut=input$cut, color=input$color, clarity=input$clarity)
  	
  	##Predict price
  	predPrice <- round(predict(model_glm(), newdata=inputData), digits = 2)
  	
  	##Output
  	priceRec <- paste("Recommended price for this diamond is: $",predPrice, sep = "")
  	print(priceRec)
  })
  
})
