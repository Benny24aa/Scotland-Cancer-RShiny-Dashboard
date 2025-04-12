output$scotland_info_graph_server <- renderPlotly({
    Cancer_Full_Data <- Cancer_Full_Data %>% 
    select(-CancerSiteICD10Code) %>% 
    filter(CancerSite == "All cancer types") %>% 
    filter(Sex == "All") %>% 
    select(Year, AllAges, HBName, DataType) %>% 
    filter(HBName == input$hb_name) %>% select(-HBName) %>% 
    filter(DataType == input$datatype_input) %>% 
    plot_ly(x = ~ Year,
            y = ~ AllAges,
            type = 'bar') %>% 
    layout(xaxis = list(title = "Year"),
           yaxis = list(title = "Test"))
})
