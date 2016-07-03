# ui.R

library(shiny)

shinyUI(fluidPage(
 titlePanel("Principle Component Analysis"),
 sidebarLayout(
   sidebarPanel(
#sliderInput("bins","sampling n=:",min=2, max=1000, value=2),
#sliderInput("mean1","mean=:",min=2, max=50, value=30),
#sliderInput("mean2","mean=:",min=2, max=50, value=30),
#sliderInput("mean3","mean=:",min=2, max=50, value=30),
#sliderInput("mean4","mean=:",min=2, max=50, value=30),
       fileInput('file', label = h3("File input"))
   ),

 mainPanel(
   plotOutput("distPlot")

  )

)




))


