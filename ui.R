library(shiny)

fig.width <- 900
fig.height <- 650

shinyUI(pageWithSidebar(
  
  headerPanel("Kernel-based Regularized Least Squares"),
  
  sidebarPanel(
    
    div(p("Find values for the lambda and sigma that recreate the Sine curve.")),
    
    div(
      
      sliderInput("lambda",
                  strong("Lambda"),
                  min=0.0325, max=6, step=.25,
                  value=3, ticks=FALSE),
      br(),
      sliderInput("sigma", 
                  strong("Sigma"),
                  min=0.0325, max=6, step=.25, 
                  value=3, ticks=FALSE),
      br(),
      checkboxInput("summary",
                    strong("Show Ideal Combination of Lambda and Sigma"),
                    value=FALSE)
      
    )
  ),
  
  mainPanel(
    tabsetPanel(type = "tabs", 
                tabPanel("About", 
                         
                         includeMarkdown("about1.md")
                ), 
                tabPanel("Plot", plotOutput("reg.plot", width=fig.width, height=fig.height),
                         title="y = cos(x) + sin(x)"),conditionalPanel("input.summary == true",
                                                             p(strong("Ideal Combination")),
                                                             verbatimTextOutput("summary")))
                )
  
  
   
))

