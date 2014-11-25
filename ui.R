library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("eGFR calculation using MDRD equation"),
  
   sidebarLayout(
      sidebarPanel(
        p("Parameters needed for the calculation"),
        sliderInput("age",label=h3("Age"), min = 0, max = 100, value = 50),
        selectInput("gender", label = h3("Gender"), 
                    choices = list("Female" = 1, "Male" = 0,
                                  selected = 1)),
        checkboxInput("black", label = "Black Race", value = FALSE),
        numericInput("crea", 
                   label = h3("Creatinine (mg/dL)"), 
                   value = 1))   
,
        
      mainPanel(h3("Calculated GFR (ml/min/1.73m2)"),
      
        textOutput("result"),
        
        h5("This application calculates the Glomerular Filtration Rate based on the MDRD equation", align="center"),
        h5("Glomerular Filtration Rate is a marker of renal function", align="center"),
        h5("This is the formula used during the calculation:", align="center"),
        h5("GFR = 175 x SerumCr-1.154 * age-0.203 * 1.212 (if patient is black) * 0.742 (if female)", align="center"),
        h5("To get the GFR value you have to simply enter the parameters", align="center")
     
     ) )
    )
  )
  