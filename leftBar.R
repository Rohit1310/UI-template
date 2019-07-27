leftContainer <- function(){
  dashboardSidebar(collapsed = FALSE,
                   disable = TRUE,
    sidebarMenu(id="sideleft",
                menuItem("TAB-1",
                         tabName = "tab1",
                         icon = icon("filter"),
                         actionButton("action", label = "Action")
                ),
                menuItem("TAB2",
                         tabName = "tab2",
                         icon = icon("cogs"),
                         checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                                            choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                            selected = 1)
                         
                ),
                
                menuItem("TAB3",
                         tabName = "tab3",
                         icon = icon("eye"),
                         sliderInput("slider1", label = h3("Slider"), min = 0, 
                                     max = 100, value = 50)
                        
                )
                
                
    )
    
  )
}