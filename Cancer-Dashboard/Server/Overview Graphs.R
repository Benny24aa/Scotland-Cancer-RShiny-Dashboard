output$scotland_info_graph_server <- renderPlotly({
  Scotland_Info_Graph <- Scotland_Info_Graph %>% 
    filter(HBName == input$hb_name) %>% select(-HBName) %>% 
    filter(DataType == input$datatype_input) %>% 
    plot_ly(x = ~ Year,
            y = ~ AllAges,
            type = 'bar') %>% 
    layout(xaxis = list(title = "Year"),
           yaxis = list(title = "Test"))
})
