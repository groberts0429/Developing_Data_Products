library(UsingR)

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      mu       <- input$mu
      variates <- input$variates
      sigma    <- input$sigma
      bins     <- input$bins

      x <- rnorm(variates, mu, sigma)
      height <- max(table(cut(x, bins)))
      
      hist(rnorm(variates, mu, sigma), breaks=bins, xlab="Mean", main="Histogram of the Normal (Gaussian) Distribution")
      lower  <- qnorm(0.025, mu, sigma, lower=TRUE)
      upper  <- qnorm(0.975, mu, sigma, lower=TRUE)
      
      lines(c(lower, lower), c(0, 1.5*height),col="red",lwd=1)
      lines(c(upper, upper), c(0, 1.5*height),col="red",lwd=1)
      lines(c(mu, mu), c(0, 1.5*height),col="blue",lwd=1)
#     text(63, 150, paste("mu = ", mu))
#     text(63, 140, paste("standard deviation = ", sigma))
#     text(63, 140, paste("variates = ", variates))
#     text(63, 140, paste("bins = ", bins))
    })
  } 
)