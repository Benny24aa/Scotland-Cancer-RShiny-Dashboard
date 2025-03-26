function(input, output) {

    filter_hb_main <- reactive({
      
      filter_hb_main <- HB_List[HB_List$HBName == input$hb_name,]
      
      return(filter_hb_main)
      
    })
    
    source(file.path("server/Information Server.R"), local = TRUE)$value ## Information page sourcing in
    source(file.path("server/Download Reference Files.R"), local = TRUE)$value
  
  }# End of Server