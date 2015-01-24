
library("ggplot2")

shinyServer(function(input, output) {
      
      output$plot1 <- renderPlot({ 
            
                        x <- rnorm(input$obs)
                        y <- rnorm(input$obs)
                              
                        a <- input$cor/sqrt(1-(input$cor^2))
                        z <- (a*x) + y
                              
                        dat <- data.frame( xvar = x, yvar = z)

                        p <- ggplot(dat, aes(x = xvar, y = yvar)) + 
                              geom_point(color = 'red', size = 3, alpha=0.5) + 
                              labs(title = "Regression of Variable X on Variable Y", x = "Variable X", y = "Variable Y") +
                              geom_smooth(method=lm, color = 'gold2', size = 2)

                        print(p)
                              
                        }, height = 700)
  
})
