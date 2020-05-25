###################1
library(pacman)
p_load(tidyverse, lubridate, readxl, highcharter, tidyquant, 
       timetk, tibbletime, quantmod, PerformanceAnalytics, scales)
p_load(reshape2)

etf01<- read.table("123456.txt")

#
etf01<-etf01%>%select(-2) 
colnames(etf01)<-c("id","date","close")
head(etf01) 
#
etf01.1<-dcast(etf01,date~id)
head(etf01.1)
#
#check NA
is.na(etf01.1)
#
na.locf(etf01.1)

#####################2
library(xts)
etf01.xts <- xts(etf01.1[,-1],
               order.by = as.Date
               (as.character(etf01.1$date), format = "%Y%m%d"))
head(etf01.xts)


etf01.xts <- xts(etf01.1[,-1],
                 order.by = as.Date
                   (as.character(etf01.1$date), format = "%Y%m%d"))
head(etf01.xts)


