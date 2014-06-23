shinyUI(pageWithSidebar(
  headerPanel("Gaussian Explorer"),
  sidebarPanel(
    sliderInput('mu', 'Mean',value = 0, min = -100, max = 100, step = 0.05),
    sliderInput('sigma', 'Standard Deviation',value = 1, min = 0, max = 10, step = 0.05),
    sliderInput('variates', 'Variates',value = 1000, min = 1, max = 10000, step = 1),
    sliderInput('bins', 'Bins',value = 25, min = 1, max = 1000, step = 1)
  ),
  
  mainPanel( 	
    plotOutput('newHist')
  )
))

