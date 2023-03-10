library("shiny")
shinyUI(fluidPage(
  titlePanel("building data product week 4 assignment")
    sidebarLayout(
      sidebarPanel(
        h3("Sidebar Text")
      ),
      mainPanel(
        h3("Main Panel Text")
      )
    )
))