library(shiny)

shinyServer(function(input, output) {
  
  cars <- mtcars
  fit <- lm(as.matrix(cars[,2:11]) ~ mpg, data = cars)
  
  output$distPlot <- renderPlot({
    newMpg <- data.frame(mpg = input$newMpg)
    carAspects <- predict(fit, newMpg)
    barplot(carAspects, ylim = c(0, 300))
  })
  
  output$aspectsTable <- renderTable({
    newMpg <- data.frame(mpg = input$newMpg)
    carAspects <- predict(fit, newMpg)
    carAspects
  })
  
  
  
})