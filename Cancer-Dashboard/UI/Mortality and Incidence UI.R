Cancer_Mortality_Incidence <- tabPanel(title = "Health Board Overview", 
                        icon = icon("hospital"),
                        
                        fluidRow(
                          column(6,
                                 h2("Health Board Overview", style = "color:  #336699 ; font-weight: 600"))),
                        
                        fluidRow(
                          
                          column(4, selectInput("hb_name", label = "Select Healthboard",
                                                choices = unique(HB_List$HBName,
                                                                 multiple = FALSE))),
                          column(4, selectInput("datatype_input", label = "Select data you wish to view",
                                                choices = unique(Cancer_Data_Type$DataType,
                                                                 multiple = FALSE))),
                          
                          column(4, selectInput("graphtype_input", label = "Select statistical graph type",
                                                choices = unique(GraphTypeOptions$Graph_Types,
                                                                 multiple = FALSE)))),
                     
                        fluidRow(
                          column(3, plotlyOutput("scotland_info_graph_server", width = "400%", height = "600px"))),
                        fluidRow(
                          column(3, plotlyOutput("scotland_gender_graph_server", width = "400%", height = "600px"))),
                        
                          
                          
                        )