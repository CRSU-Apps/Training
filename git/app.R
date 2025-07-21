#
# This is a bodge app to make our how-to document for version control available on the web.
#

library(shiny)

# Define UI 
ui <- fluidPage(
  tags$iframe(
    height = "100%",
    width = "100%",
    style = "position:fixed; top:0; left:0; bottom:0; right:0; border:none; margin:0; padding:0; overflow:hidden; z-index:999999;",
    src = paste0("UsingGit.html")
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
}

# Run the application 
shinyApp(ui = ui, server = server)
