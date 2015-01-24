
library("shiny")
library("ggplot2")

shinyUI(pageWithSidebar(
        headerPanel('Random Variable Regression'),
        sidebarPanel(
              numericInput('obs', 'Number of Points', 100, min = 10, max = 5000, step = 100),
              numericInput('cor', 'Variable Correlation', 0, min = -1, max = 1, step = 0.1)
              ),
        mainPanel(
              plotOutput('plot1')
              ))
)
        