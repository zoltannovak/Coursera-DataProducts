library(ggplot2)

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      start <- input$start
      end <- input$end
      dof <- input$dof
      mn <- input$mn
      std <- input$stD

#      start <- -10
#      end <- 10
#      dof <- 10
#      mn <- 1
#      std <- 2      
      
      x <- seq(start, end, length=100)
      nx <- dnorm(x, mean=mn, sd=std)
      tx <- dt(x, df = dof)

      data <- data.frame(xVal=x, yVal=tx, distribution = "t distribution")
      data <- rbind(data,  data.frame(xVal=x, yVal=nx, distribution = "Normal distribution"))
      
      ggplot(data, aes(x=xVal, y=yVal, group=distribution, shape=distribution, colour=distribution)) +
        geom_line(size=1.5) + 
        xlab("Random variable") +
        ylab("Density")+
        ggtitle("Normal and t-distributions density curve")+
        theme(axis.title=element_text(size=12), plot.title=element_text(size=14,face="bold"))
      
      

      })
  }
)