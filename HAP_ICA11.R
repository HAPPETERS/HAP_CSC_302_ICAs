library(ggplot2)
library(tidyr)
library(dplyr)

perform = read.csv('C:/Users/user/Downloads/IntrusionDetectionPerformance.csv')

ggplot(data=perform) + geom_line(aes(x=Number.of.Attacks, y=TPR.SVM, color='red')) +
  xlab('Number of Attacks/hour') + ylab('Performance') + ggtitle("Test")


#theme() can do further modifications...

perform%>%gather(Metric, Performance, -Number.of.Attacks)->perform2

ggplot(data=perform2) + geom_line(aes(x=Number.of.Attacks, y=Performance, color=Metric), size=1) +
  xlab('Number of Attacks/hour') + ylab('Performance')


flights = read.csv("C:/Users/user/Downloads/flights.csv")
p1<-ggplot(data=flights) + geom_line(aes(x=year, y=passengers, color=month)) + theme_bw() + xlab('')

ggsave('C:/Users/user/Downloads/flights.jpg', p1)
