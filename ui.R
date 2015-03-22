shinyUI(pageWithSidebar(
  headerPanel("Normal vs T Distribution density function comparison application"),
  sidebarPanel(
    sliderInput('start', 'Interval start', value = -5, min = -30, max = -1, step = 1),
    sliderInput('end', 'Interval end',value = 5, min = 1, max = 30, step = 1),
    sliderInput('mn', 'Mean (normal distribution)',value = 0, min = -15, max = 15, step = 0.1),
    sliderInput('stD', 'Standard deviation (normal distribution)',value = 2, min = 0.1, max = 10, step = 0.1),
    sliderInput('dof', 'Degree of freedom (t distribution)',value = 10, min = 1, max = 100, step = 1)
  ),
  mainPanel(
    h4("Normal vs T Distribution density function comparison"),
    h2("Overview"),
    p("This Shiny application compares the density curves of normal and t-distributions with a user defined set of parameters."),
    h2("User Input"),
    p("Interval start - the start of interval to be plotted in the graph"),
    p("Interval end - the end of interval to be plotted in the graph"),
    p("Mean (normal distribution) - mean of Normal Distribution curve"),
    p("Standard deviation (normal distribution) - standard deviation of Normal distribution curve"),
    p("Degree of freedom (t distribution) - degree of freedom of t-distribution"),
    h2("Application Output"),
    plotOutput('newHist')
  )
))

