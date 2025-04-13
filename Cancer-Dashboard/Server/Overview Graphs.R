output$scotland_info_graph_server <- renderPlotly({
    Cancer_Full_Data <- Cancer_Full_Data %>% 
    select(-CancerSiteICD10Code) %>% 
    filter(CancerSite == "All cancer types") %>% 
    filter(Sex == "All") %>% 
    select(Year, AllAges, CrudeRate, EASR, WASR, StandardisedRatio, HBName, DataType) %>% 
    filter(HBName == input$hb_name) %>% select(-HBName) %>% 
    filter(DataType == input$datatype_input) %>% 
      plot_ly(x = ~ Year,
              y = ~ get(input$graphtype_input),
              type = 'scatter',
              mode = 'lines') %>% 
      layout(xaxis = list(title = "Year"),
             yaxis = list(title = input$datatype_input))
   
})
# 
# if (input$graphType == "line") {
#   plot_ly(x = ~ Year,
#           y = ~ AllAges,
#           type = 'scatter',
#           mode = 'lines') %>% 
#     layout(xaxis = list(title = "Year"),
#            yaxis = list(title = input$datatype_input))
# } else if (input$graphType == "bar") {
#   plot_ly(x = ~ Year,
#           y = ~ AllAges,
#           type = 'bar')%>% 
#     layout(xaxis = list(title = "Year"),
#            yaxis = list(title = input$datatype_input))
#   
# }