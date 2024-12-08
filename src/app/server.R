server <- function(input, output, session) {
  session$onSessionEnded(function(){stopApp()})

  output$page1 <- shiny::renderUI(p('test app'))



}