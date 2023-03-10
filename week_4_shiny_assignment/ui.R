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
    titlePanel("building data product week 4 assignment"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(fluid= TRUE,
        sidebarPanel( 
        sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
        sliderInput("bins", "Number of bins:",min = 1, max = 50,value = 30) ,
        numericInput("numeric", "How Many Random Numbers Should be plotted", value = 1000, min = 1, max = 1000, step=1),
        sliderInput("sliderX", "Pick Minimum and Maximum X Values",-100, 100, value = c(-50, 50)),
        sliderInput("sliderY", "Pick Minimum and Maximum Y Values",-100, 100, value = c(-50, 50)),
        
        checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
        checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
        checkboxInput("show_title", "Show/Hide Title", value = TRUE),
        checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
        checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
        submitButton("compute")
    ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            plotOutput("plot1"),
            plotOutput("plot2"),
            h3("Predicted Horsepower from Model 1:"),
            textOutput("pred1"),
            h3("Predicted Horsepower from Model 2:"),
            textOutput("pred2")
        )
    )
))
