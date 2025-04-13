Cancer_Mortality_Incidence <- tabPanel(title = "Mortality and Incidence", 
                        icon = icon("home"),
                        fluidRow(
                          column(6, selectInput("datatype_input", label = "Select data you wish to view",
                                                choices = unique(Cancer_Data_Type$DataType,
                                                                 multiple = FALSE))),
                          
                          column(6, selectInput("graphtype_input", label = "Select statistical graph type",
                                                choices = unique(GraphTypeOptions$Graph_Types,
                                                                 multiple = FALSE)))),
                        fluidRow(
                          column(3, plotlyOutput("scotland_info_graph_server", width = "400%", height = "600px")))
                          
                          
                        )