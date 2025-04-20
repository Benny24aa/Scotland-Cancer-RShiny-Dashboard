Cancer_Mortality_Incidence_Comparison <- tabPanel(title = "Health Board Comparison", 
                                       icon = icon("hospital"),

fluidRow(
  column(6,
         h2("Health Board Comparison", style = "color:  #336699 ; font-weight: 600"))),

fluidRow(
column(4, selectInput("datatype_input", label = "Select data you wish to view",
                      choices = unique(Cancer_Data_Type$DataType,
                                       multiple = TRUE))),

column(4, selectInput("graphtype_input", label = "Select statistical graph type",
                      choices = unique(GraphTypeOptions$Graph_Types,
                                       multiple = TRUE)))),

fluidRow(
  column(3, plotlyOutput("hb_compare_graph", width = "400%", height = "600px")))


)