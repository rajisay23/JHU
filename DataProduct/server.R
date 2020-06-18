#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library('ggplot2')
data("mtcars")
mpgData <- mtcars
mpgData$am <- factor(mpgData$am, labels = c("Automatic", "Manual"))
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    formulaText <- reactive({
        paste("mpg vs ", input$variable)
    })
    
    output$caption <- renderText({
        formulaText()
    })
    
    output$mpgPlot <- renderPlot({
        ggplot(mpgData, aes_string(y=input$variable, x="mpg")) + geom_point()
    })

})
