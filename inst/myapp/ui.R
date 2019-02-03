ui <- navbarPage("Diversifood WP2 results",
  tabPanel("WP2 trials main results", includeMarkdown("text.md")),
  tabPanel("data base link",
           sidebarLayout(
             sidebarPanel(
               selectInput('Country', 'Country', c("ALL", as.character(unique(data_link$Country)))),
               selectInput('Partner', 'Partner', c("ALL", as.character(unique(data_link$Partner)))),
               selectInput('Species', 'Species', c("ALL", as.character(unique(data_link$Species))))
               ),
             mainPanel(DT::dataTableOutput("table_link"))
             )
           ),
  tabPanel("data base rg",
           sidebarLayout(
             sidebarPanel(
               selectInput('Country', 'Country', c("ALL", as.character(unique(data_rg$Country)))),
               selectInput('Partner', 'Partner', c("ALL", as.character(unique(data_rg$Partner)))),
               selectInput('Species', 'Species', c("ALL", as.character(unique(data_rg$Species)))),
               selectInput('Entry.name', 'Entry name', c("ALL", as.character(unique(data_rg$Entry.name))))
             ),
             mainPanel(DT::dataTableOutput("table_rg"))
           )
  )
  )
