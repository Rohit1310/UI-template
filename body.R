body <- function(){
  dashboardBody(
    tags$div(id="map",
             fluidRow(
               br(),
               br(),
               column(12,leafletOutput("mymap",height = 600))
             )
             
             )
  )
}