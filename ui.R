library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Hemoglobin Level Determination"),
    
    sidebarPanel(
      numericInput('hemoglobin', 'Hemoglobin gm/dL', 14, min = 1, max = 22, step = 1),
      radioButtons("sex", "Sex:",
                   c("Man" = "1",
                     "Woman" = "2")),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Level '),
      verbatimTextOutput("level")
    )
  )
)