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
             yaxis = list(title = input$graphtype_input))
   
})

output$scotland_gender_graph_server <- renderPlotly({
  Cancer_Full_Data <- Cancer_Full_Data %>% 
    select(-CancerSiteICD10Code) %>% 
    filter(CancerSite == "All cancer types") %>% 
    filter(Sex != "All") %>% 
    select(Year, Sex, AllAges, CrudeRate, EASR, WASR, StandardisedRatio, HBName, DataType) %>% 
    filter(HBName == input$hb_name) %>% select(-HBName) %>% 
    filter(DataType == input$datatype_input) %>% 
    plot_ly(x = ~ Year,
            y = ~ get(input$graphtype_input),
            color = ~ Sex, colors = gender_palette,
            type = 'scatter',
            mode = 'lines') %>% 
    layout(xaxis = list(title = "Year"),
           yaxis = list(title = input$graphtype_input))
  
})
