#labels and themes

##scatter plot
ggplot(data, aes(y = mpg,x = wt,col = factor(gear),shape = factor(gear))) + geom_point() -> obj1 
obj1 + labs(title = "Mile per gallon vs Weight", y = "Miles per gallon", x = "Weight", col = "Number of gears", shape = "Number of gears")->obj2
##Prem plotted with color and shape, now i am providing a key or a label to the categorical variable.
obj2 + theme(panel.background = element_rect(fill = "slategray1"))->obj3 
obj3 + theme(plot.title = element_text(hjust = 0.5, face = "bold")) 



##bar plot graph
ggplot(data, aes(x=factor(carb), fill=factor(cyl))) + geom_bar()->g4
g4 +  labs(title = "Count plot of cars based on number of carburetors", x = "Number of carburetors", fill = "Number of cylinders")->g5
g5  + theme(panel.background = element_rect(fill = "black"))->g6
g6 + theme(plot.title = element_text(hjust = 0.5, face = "bold")) 


##Frequency distribution graph
ggplot(data, aes(x=qsec, col = factor(am))) + geom_freqpoly(bins = 5)->obj7
obj7 +  labs(title = "Frequency distribution of quarter mile time", x = "Quarter mile time",  col = "0=automatic,1=manual")->obj8
obj8 + theme(panel.background = element_rect(fill = "lightsteelblue"))->obj9
obj9 + theme(plot.title = element_text(hjust = 0.7, face = "bold")) 

##box plot
ggplot(data, aes(x=factor(cyl), y=wt, fill=factor(cyl))) + geom_boxplot()->obj10
obj10 + labs(title = "Box plot of weight wrt number of cylinders", x = "Number of cylinders", y = "Weight", fill = "Number of cylinders")->obj11
obj11 + theme(panel.background = element_rect(fill = "seashell"))->obj12
obj12+ theme(plot.title = element_text(hjust = 0.5, face = "bold"))
