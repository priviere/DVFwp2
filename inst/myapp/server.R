server <- function(input, output) {
  # Combine the selected variables into a new dataDVFwp2 frame
  output$table <- DT::renderDataTable(DT::datatable({
    if( input$Country != "ALL"){
      dataDVFwp2 = dplyr::filter(dataDVFwp2, Country == input$Country)
    }
    if( input$Partner != "ALL"){
      dataDVFwp2 = dplyr::filter(dataDVFwp2, Partner == input$Partner)
    }
    if( input$Species != "ALL"){
      dataDVFwp2 = dplyr::filter(dataDVFwp2, Species == input$Species)
    }
    if( input$Genetic.category != "ALL"){
      dataDVFwp2 = dplyr::filter(dataDVFwp2, Genetic.category == input$Genetic.category)
    }
    if( input$Entry.name != "ALL"){
      dataDVFwp2 = dplyr::filter(dataDVFwp2, Entry.name == input$Entry.name)
    }
    dataDVFwp2
    }))
}

