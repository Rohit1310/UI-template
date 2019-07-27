header <- function(){
  dashboardHeaderPlus(
    title = "UI Template",
    fixed = TRUE,
    enable_rightsidebar = TRUE,
    rightSidebarIcon = "chevron-circle-left",
    left_menu = tagList(
      dropdownBlock(
        id = "mydropdown",
        title = "Dropdown 1",
        icon = "caret-down",
        badgeStatus = NULL,
        sliderInput(
          inputId = "n",
          label = "Number of observations",
          min = 10, max = 100, value = 30
        ),
        prettyToggle(
          inputId = "na",
          label_on = "NAs keeped",
          label_off = "NAs removed",
          icon_on = icon("check"),
          icon_off = icon("remove")
        )
      ),
      dropdownBlock(
        id = "mydropdown2",
        title = "Dropdown 2",
        icon = "caret-down",
        badgeStatus = NULL,
        prettySwitch(
          inputId = "switch4",
          label = "Fill switch with status:",
          fill = TRUE,
          status = "primary"
        ),
        prettyCheckboxGroup(
          inputId = "checkgroup2",
          label = "Click me!",
          thick = TRUE,
          choices = c("Click me !", "Me !", "Or me !"),
          animation = "pulse",
          status = "info"
        )
      )
    )
  )
}