library(shiny)

hemoglobinLevel <- function(hemoglobin, sex) {
  if (sex == "1") {
    if (hemoglobin > 18) {return("high")}
      else {
        if (hemoglobin > 13) {return("normal")}
          else {return ("low")}
      }
  } else {
    if (hemoglobin > 16) {return ("high")}
    else {
      if (hemoglobin > 11) {return ("normal")}
      else {return ("low")}
    }
  }
return ("low")
}
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$hemoglobin})
    output$level <- renderPrint({hemoglobinLevel(input$hemoglobin, input$sex)})
  }
)