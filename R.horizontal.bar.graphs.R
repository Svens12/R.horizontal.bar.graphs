library(dplyr)
mydata<-read.csv('murders.csv')
mydata
myseldata<-select(mydata,total,population)
barplot(myseldata$population)
barplot(myseldata$total,
        horiz=TRUE,
        xlab='population',
        ylab='total',
        main='total Vs population',
        col='blue',
        names.arg=myseldata$state)
