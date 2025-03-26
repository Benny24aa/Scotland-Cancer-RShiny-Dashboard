#################################
source("UI/Information.R"
)# Sourcing in Information Tab from different script

#################################
navbarPage(title = div(tags$a(img(src="", width=120, alt = ""),
                              href= "",
                              target = "_blank"),
                       style = "position: relative; top: -10px;"),
           windowTitle = "Cancer Dashboard Application", #title for browser tab
           header = tags$head(includeCSS("www/styles.css"), # CSS styles
                              HTML("<html lang='en'>")),
           
           ##### Tab Panels
           information, ### basic information/home page
           navbarMenu("Mortality"), ### Commentary Page
           navbarMenu("Incidence")#Nav Bar for all reference files
           
           
           
           
           
           
           
)#End of navbarpage