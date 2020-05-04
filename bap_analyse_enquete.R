library("readxl")
library(ggplot2)

prices<-read_excel("C:/Users/IndyV/Desktop/maxPrijs.xlsx")
prices<-as.numeric(unlist(prices))
mean<-mean(prices)
mean
median<-median(prices)
median
prices=data.frame(prices)
plot <- boxplot(prices)
