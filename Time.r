train<- read.csv("C:\\Users\\431539\\Desktop\\Time\\Train.csv",na.string ="") #18288

test<- read.csv("C:\\Users\\431539\\Desktop\\Time\\Test.csv",na.strings = "") #5112

str(train) #18288
str(test)#5112

tsdata <-ts(train$Count,freq=8766)

tsdata <-ts(train$Count,start=c(2012,1),freq=8766)


plot(tsdata)

dd=decompose(tsdata)

plot(dd)

ss=tsdata-dd$seasonal

plot(ss)

hh=HoltWinters(tsdata)

ff=forecast.HoltWinters(forecast, h=5112)

a=predi

