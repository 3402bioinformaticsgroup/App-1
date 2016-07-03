# server.R
library(shiny)
library(gplots)

shinyServer(function(input, output){

output$distPlot<-renderPlot({

#a<-rnorm(n=input$bins, mean=input$mean1)
#b<-rnorm(n=input$bins, mean=input$mean2)
#c<-rnorm(n=input$bins, mean=input$mean3)
#d<-rnorm(n=input$bins, mean=input$mean4)
#x<-as.matrix(cbind(a,b,c,d))
#colnames(x)<-c("sample1","sample2","sample3","sample4")
#heatmap.2(x, margin=c(15,15))
filename<-input$file
if(is.null(filename))
 return(NULL)
x<-as.matrix(read.csv(filename$datapath,header=T,row.names=1))
pc<-prcomp(t(log(x)))
plot(pc$x[,1],pc$x[,2],col=c("red","red","blue","blue"),xlab="PC1",ylab="PC2")

})




})