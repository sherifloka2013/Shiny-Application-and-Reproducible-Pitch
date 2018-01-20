library(shiny)
shinyUI(fluidPage(
        
        titlePanel("Star Graph App"),
        
        tabsetPanel(
                tabPanel("Documentation of Shiny Application",
                         
                         h1("Star Graph Shiny Appllication"),
                         br(),
                         h2("simple star graph demonstration application,
                            that allow you to change star graph size,
                            node color and size as well as edge color and width."),
                         br(),
                         h2("Input fields avaiable to user when user enter
                            desired value for each variable and changes will automatically
                            appear")
                         
                         ),
                tabPanel("Application",
                         
                         sidebarLayout(
                                 sidebarPanel(
                                         numericInput('n', 'Graph Size', 10, min = 1, max = 200),
                                         selectizeInput("nodecolor","Node Color:",c("yellow","blue","green")),
                                         selectizeInput("edgecolor","Edge Color",c("blue","black","brown")),
                                         sliderInput('nodesize', 'Node size', min = 1, max = 50, value = 10),
                                         sliderInput('edgewidth', 'Edge Width', min = 10, max = 50, value = 10),
                                         hr(),
                                         helpText("by Sherif Hassan Jnuary 20 2018")
                                 ),
                                 
                                 mainPanel(
                                         plotOutput('outplot')
                                 )
                         )
                         
                )
                         )
        
                ))