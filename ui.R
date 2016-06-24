library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Fuel efficiency and car aspects"),
  
  sidebarPanel(
    
    p("Use the slider to select the desired fuel consumption in mpg."),
    
    sliderInput("newMpg", 
                "Fuel Consumption (mpg):", 
                min = 1,
                max = 33, 
                value = 17)
    
  ),
  
  mainPanel(
    plotOutput("distPlot"),
    tableOutput("aspectsTable"),
    p("mpg	 Miles/(US) gallon"),
    p("cyl	 Number of cylinders"),
    p("disp	 Displacement (cu.in.)"),
    p("hp	 Gross horsepower"),
    p("drat	 Rear axle ratio"),
    p("wt	 Weight (1000 lbs)"),
    p("qsec	 1/4 mile time"),
    p("vs	 V/S"),
    p("am	 Transmission (0 = automatic, 1 = manual)"),
    p("gear	 Number of forward gears"),
    p("carb	 Number of carburetors")
  )
))