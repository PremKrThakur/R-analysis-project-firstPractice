#This is the user-interface definition of a Shiny web application. You can

library(shiny)

# Application title

fluidPage(

    titlePanel("Old Faithful Geyser Data"),

    
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30) # Sidebar with a slider input for number of bins
        ),

        
        mainPanel(
            plotOutput("distPlot") # Show a plot of the generated distribution
        )
    )
)