#
# This is a bodge app to make our how-to document for version control available on the web.
#

library(shiny)

# Define UI 
ui <- fluidPage(
  htmlOutput("how_to_doc")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  getPage<-function() {
    return(includeHTML("UsingGit.html"))
  }
  output$how_to_doc<-renderUI({getPage()})
}

# Run the application 
shinyApp(ui = ui, server = server)
