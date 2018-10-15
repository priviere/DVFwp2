ui <- navbarPage("Diversifood WP2 results",
  tabPanel("WP2 trials main results", includeMarkdown("text.md")),
  tabPanel("data base",
           sidebarLayout(
             sidebarPanel(
               selectInput('Country', 'Country', c("ALL", as.character(unique(dataDVFwp2$Country)))),
               selectInput('Partner', 'Partner', c("ALL", as.character(unique(dataDVFwp2$Partner)))),
               selectInput('Species', 'Species', c("ALL", as.character(unique(dataDVFwp2$Species)))),
               selectInput('Genetic.category', 'Genetic category', c("ALL", as.character(unique(dataDVFwp2$Genetic.category)))),
               selectInput('Entry.name', 'Entry name', c("ALL", as.character(unique(dataDVFwp2$Entry.name))))
               ),
             mainPanel(DT::dataTableOutput("table"))
             )
           )
  )
