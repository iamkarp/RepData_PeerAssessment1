setwd("C:/Users/DataScience/Downloads/steps")
activity=read.csv("activity.csv")
activity2=complete.cases(activity)
activity2=activity[complete.cases(activity),]
byday=aggregate(activity2[,1],list(activity2[,2]),FUN=sum)
hist(byday[,2],breaks=20)
mean(byday[,2])
median(byday[,2])