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
                tabPanel("About", p("Traditional Linear Regression has a difficult time modeling non-linear data."),
                         p("Kernel regualrized least squares (KRLS) is a method that allows us to model non-linear data with linear tools"),
                         p("The power of KRLS lies in the kernel matrix where the data is projected into higher dimension in order to use our well-understood linear modeling tools"),
                         p("I have simulated data from cos(x)+sin(x) to demonstrate this power"),
                         p("The issue with KRLS is finding the optimal lambda and sigma pair that can recreate the cos(x)+sin(x) curve"),
                         p("Please give it a try in the y=cos(x)+sin(x) tab and moving around the lambada and sigma inputs"),
                         p("Click the checkbox to display the optimal pair"),
                         p("For more information on KRLS check out", 
                         a("http://homepages.rpi.edu/~bennek/class/mds/lecture/lecture6-06.pdf"),
                         href = " http://homepages.rpi.edu/~bennek/class/mds/lecture/lecture6-06.pdf"),
                         p("Source code for ui.R and server.R files are available on the", a("https://github.com/bms63/Shiny_Part_KRR", 
          href = " https://github.com/bms63/Shiny_Part_KRR"))
                         
                      
                ), 
                tabPanel("Plot", plotOutput("reg.plot", width=fig.width, height=fig.height),
                         title="y = cos(x) + sin(x)"),conditionalPanel("input.summary == true",
                                                             p(strong("Ideal Combination")),
                                                             verbatimTextOutput("summary")))
                )
   
))

