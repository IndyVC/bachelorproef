library("readxl")

dataset<-read_excel("C:/Users/IndyV/Desktop/dataset.xlsx",col_names=TRUE)
df<-data.frame(dataset)
mean_accuraatheid<-mean(df$accuraatheid)
mean_waterbestendigheid<-mean(df$waterbestendigheid)
mean_gebruiksvriendelijkheid<-mean(df$ gebruiksvriendelijkheid)

smallest_mean<-min(mean_accuraatheid,mean_waterbestendigheid,mean_gebruiksvriendelijkheid)

t.test(df$accuraatheid,mu = smallest_mean)
t.test(df$waterbestendigheid,mu = smallest_mean)
t.test(df$gebruiksvriendelijkheid,mu = smallest_mean)
