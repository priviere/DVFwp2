server <- function(input, output) {
  
  output$table_link <- DT::renderDataTable(DT::datatable({
    
    if( input$Country != "ALL"){
      data_link = dplyr::filter(data_link, Country == input$Country)
    }
    if( input$Partner != "ALL"){
      data_link = dplyr::filter(data_link, Partner == input$Partner)
    }
    if( input$Species != "ALL"){
      data_link = dplyr::filter(data_link, Species == input$Species)
    }
    data_link
    }, escape = FALSE))
  
  output$table_rg <- DT::renderDataTable(DT::datatable({
    
    if( input$Country != "ALL"){
      data_rg = dplyr::filter(data_rg, Country == input$Country)
    }
    if( input$Partner != "ALL"){
      data_rg = dplyr::filter(data_rg, Partner == input$Partner)
    }
    if( input$Species != "ALL"){
      data_rg = dplyr::filter(data_rg, Species == input$Species)
    }
    if( input$Entry.name != "ALL"){
      data_rg = dplyr::filter(data_rg, Entry.name == input$Entry.name)
      }
    data_rg
  }))
  
}

