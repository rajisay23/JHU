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
    titlePanel("Cars Dataset - Miles per Gallon"),

    # Sidebar with a slider input for number of bins
    sidebarPanel(
        selectInput("variable", "Variable:", 
                    c("Cylinders" = "cyl",
                      "Transmission" = "am",
                      "Gears" = "gear"))
        ),

        # Show a plot of the generated distribution
    mainPanel(
        # Output: Formatted text for caption ----
        h3(textOutput("caption")),
        
        # Output: Plot of the requested variable against mpg ----
        plotOutput("mpgPlot")
    )
    
))
