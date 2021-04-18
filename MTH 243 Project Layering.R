#Demonstrate how basic plots are not useful

data <- mtcars
View(data)
str(data) #our data is all numerical

plot(data$mpg,data$wt)
plot(data$mpg,data$wt,ylab = "Weight", xlab = "Miles per gallon",main = "Plot of weight vs mpg")
plot(data$mpg,data$wt,ylab = "Weight", xlab = "Miles per gallon",main = "Plot of weight vs mpg",col = "red",pch=16)
#pch is plot character, number 16 is filled circle

hist(data$qsec)
hist(data$qsec,xlab = "Quarter Mile Time",main = "Distribution of quarter mile time",col = "forestgreen")

boxplot(data$qsec~data$gear)
boxplot(data$qsec~data$gear,xlab = "Number of Gears", ylab = "Quarter Mile Time", main = "Quarter mile time for cars different forward gear numbers",col = "darksalmon")

#We move to ggplot2, to produce high quality graphs

library(ggplot2)

#Scatter plots
ggplot(data)
ggplot(data, aes(y = mpg,x = wt))
ggplot(data, aes(y = mpg,x = wt)) + geom_point()
ggplot(data, aes(y = mpg,x = wt,col = factor(gear))) + geom_point() #based on color
ggplot(data, aes(y = mpg,x = wt,shape = factor(gear))) + geom_point() #based on shape
ggplot(data, aes(y = mpg,x = wt,col = factor(gear),shape = factor(gear))) + geom_point() #based on both

#Histograms
ggplot(data, aes(x=qsec)) + geom_histogram(bins = 5)
ggplot(data, aes(x=qsec)) + geom_histogram(bins = 5, fill="darkviolet")
ggplot(data, aes(x=qsec)) + geom_histogram(bins = 5, fill="darkviolet",col="deeppink")
ggplot(data, aes(x=qsec, fill=factor(am))) + geom_histogram(bins = 5)
ggplot(data, aes(x=qsec, fill=factor(am))) + geom_histogram(bins = 5, position = "fill")
ggplot(data, aes(x=qsec, fill=factor(am))) + geom_histogram(bins = 5, position = "identity", alpha = 1/2) #to show an overlap of the distributions

#Bar Plot
ggplot(data, aes(x=factor(carb))) + geom_bar()
ggplot(data, aes(x=factor(carb), fill=factor(cyl))) + geom_bar()

#Frequency Polygon
ggplot(data, aes(x=qsec)) + geom_freqpoly(bins = 5)
ggplot(data, aes(x=qsec, col = factor(am))) + geom_freqpoly(bins = 5)

#Box Plot
ggplot(data, aes(x=factor(cyl), y=wt)) + geom_boxplot()
ggplot(data, aes(x=factor(cyl), y=wt, fill=factor(cyl))) + geom_boxplot()
ggplot(data, aes(x=factor(cyl), y=wt, fill=factor(am))) + geom_boxplot()

#Smooth line curve
ggplot(data, aes(y=mpg,x=wt)) + geom_smooth()
ggplot(data, aes(y=mpg,x=wt,col=factor(vs))) + geom_smooth(se=FALSE)
ggplot(data, aes(y=mpg,x=wt)) + geom_point() + geom_smooth(method="lm",se=FALSE)
ggplot(data, aes(y=mpg,x=wt,col=factor(vs))) + geom_point() + geom_smooth(method="lm",se=FALSE)

cor(data) #to show the correlation between our variables

#simple data frame
df = data.frame("brand" = c("Samsung","Huawei","Apple","Xiaomi","OPPO","Other"),"share" = c(0.2090,0.1580,0.1210,0.0930,0.0860,0.3320))
head(df)

#Pie Chart
ggplot(df, aes(x = "", y = share, fill = brand)) + geom_bar(stat = "identity") + coord_polar("y", start=0)

#introduce faceting here
