#
# This is the template for the application UI for the DF shiny projects.
#
# Author - Rohit Jain
#

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(leaflet)

source(paste0(getwd(),"/body.R"))
source(paste0(getwd(),"/leftBar.R"))
source(paste0(getwd(),"/rightbar.R"))
source(paste0(getwd(),"/header.R"))


dashboardPagePlus(header = header(),
                  sidebar = leftContainer(),
                  body = body(),
                  rightsidebar = rightContainer(),
                  skin = "purple",
                  sidebar_background = NULL,
                  sidebar_fullCollapse = FALSE,
                  collapse_sidebar = TRUE
                    
  
)
