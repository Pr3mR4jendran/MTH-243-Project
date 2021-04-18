#how to install ggplot2?
install.packages("ggplot2")
#how to load ggplot2?
library("ggplot2")
#dataset we are using: mt cars
mtcars
#simple plot in r, #mtcars
plot(mtcars$cyl,mtcars$mpg)
#customize a little, add some color
plot(mtcars$cyl,mtcars$mpg,col="blue")
#change the type!
plot(mtcars$cyl,mtcars$mpg,type="o",col="blue")
#add some more details 
plot(mtcars$cyl,mtcars$mpg,main="cyl vs mpg",ylab="mpg",col="blue")
#lets use ggplot2, start with qplot
qplot(mtcars$cyl,mtcars$mpg)
#or
qplot(cyl,mpg,data=mtcars)
#looks more modern, higher resolution and automatic labeling!
qplot(mpg,wt,data=mtcars)
#nicer distrubition of data between these variables
#lets customize a little bit!
qplot(mpg,wt,data=mtcars,color=factor(cyl)) #color argument is used to tell r we want to color points by groups
factor(mtcars$cyl)
#more customization
qplot(mpg,wt,data=mtcars,color=factor(cyl),geom=c("point"))
#add regression line using smooth in geom
qplot(mpg,wt,data=mtcars,color=factor(cyl),geom=c("point","smooth"))
#lets use ggplot()
ggplot() #must be of form dataframe, unlike qplot and plot()
ggplot(mtcars, aes(x = mpg, y = wt)) #just gives you the plot, where x and y is
ggplot(mtcars, aes(x = mpg, y = wt))+geom_point() #displays data as scatterplot
ggplot(mtcars, aes(x = mpg, y = wt))+geom_point()+stat_smooth() #adds regression lines
#lets customize it a little!
ggplot(mtcars,aes(x=mpg,y=wt,colour=hp))+geom_point()
mpg
#we can add gradient colors
g<-ggplot(mtcars,aes(x=mpg,y=wt,colour=hp))+geom_point()
g+scale_color_gradientn(colours = rainbow(2))
#use coloreful combinations to make vivid, clear and nice looking plots!
