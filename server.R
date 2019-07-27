#
# This is the template for the application UI for the DF shiny project
#
# Author - Rohit Jain
#

library(shiny)
library(leaflet)

shinyServer(function(input, output,session) {
  
  output$mymap <- renderLeaflet({
    leaflet(options = leafletOptions(doubleClickZoom= FALSE)) %>%
      addTiles(urlTemplate = "http://mt0.google.com/vt/lyrs=s,h&hl=en&x={x}&y={y}&z={z}&s=Ga",attribution = "GOOGLE")%>%
      setView(  lat = 51.752520,lng =  15.894911, zoom = 5)
  })
  
})
