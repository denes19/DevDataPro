library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
 x<- reactive({as.numeric(175 * as.numeric(input$crea)^-1.154 * as.numeric(input$age)^-0.203 * (1+0.212*as.numeric(input$black)) * (1-0.258*as.numeric(input$gender)))})
  
  output$result<-renderText({x()})
  
  
  
})