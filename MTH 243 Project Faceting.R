mpg
library(ggplot2)
mpg
myplot <- ggplot(mpg, aes(x= displ, y= cty))+geom_point(size=2, color="blue") #you can do aes(displ, cty)
myplot
myplot + facet_grid(rows = vars(drv))
# Use vars() to supply variables from the dataset.
myplot + facet_grid(cols = vars(cyl)) #facet into columns based on cyl
myplot + facet_grid(vars(drv), vars(cyl))
myplot + facet_grid(rows= vars(drv), cols= vars(cyl)) ##by default
myplot + facet_grid(cols= vars(drv), rows= vars(cyl)) #facet into both rows and columns
##analysis on mtcars dataset
# Free scales
# You can also choose whether the scales should be constant across all panels (the default), or whether they should be allowed to vary
mtcars
mymtcars <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) + ##you can add colores
  geom_point(size= 2) ##you can adjust the size
mymtcars
mymtcars + facet_grid(vars(cyl)) #Notice: there is a color, and this is because we defined the color for cyl already.
mymtcars + facet_grid(vars(cyl), scales = "free") ##only the axes are free
mymtcars + facet_grid(vars(cyl), scales = "free", space = "free") ##the whole sheet is free
some faceting using mtcars.
mtcars
# Margins
# Margins can be specified logically (all yes or all no) or for specific variables as (character) variable names
mg <- ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point()
mg
#explain the telda sign.
mg + facet_grid(vs + am ~ gear, margins = TRUE) ##margins vs, am, gears.
mg + facet_grid(vs + am ~ gear, margins = "am") ##margins only am.
###I can do with boxplot
library(ggplot2)
ToothGrowth
toothplot<-ggplot(ToothGrowth, aes(x=dose, y=len, group=dose)) +
  geom_boxplot(aes(fill=dose)) ##this is confusing, lets change dose to as.factor.
toothplot
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
toothplot<-ggplot(ToothGrowth, aes(x=dose, y=len, group=dose)) +
  geom_boxplot(aes(fill=dose))
toothplot
##facet with one variable
# Split in horizontal direction
toothplot + facet_grid(supp ~ .)
# Split in vertical direction
toothplot + facet_grid(. ~ supp)
# Facet by two variables: dose and supp.
# Rows are dose and columns are supp
toothplot + facet_grid(dose ~ supp)
toothplot + facet_grid(supp ~ dose)
#Marginstoothplot + facet_grid(dose ~ supp, margins=TRUE)
toothplot + facet_grid(dose ~ supp, margins="dose")
library(ggplot2)
mpg
mywrap <- ggplot(mpg, aes(displ, hwy)) + geom_point()
mywrap
# Use vars() to supply faceting variables:
mywrap + facet_wrap(vars(class))
# Control the number of rows and columns with nrow and ncol
mywrap + facet_wrap(vars(class), nrow = 4)
#You can facet by multiple variables
ggplot(mpg, aes(displ, hwy)) + geom_point() +
  facet_wrap(vars(cyl, drv))
ggplot(mpg, aes(displ, hwy)) + geom_point() +
  facet_wrap(vars(cyl, drv, fl))
#By default, the same scales are used for all panels. You can allow scales to vary across the panels with the `scales` argument.
#Free scales make it easier to see patterns within each panel, but
#harder to compare across panels.
ggplot(mpg, aes(displ, hwy)) + geom_point() +
  facet_wrap(vars(class), scales = "free")
ggplot(mpg, aes(displ, hwy)) + geom_point() +
  facet_wrap(vars(class), scales = "free_x")
ggplot(mpg, aes(displ, hwy)) + geom_point() +
  facet_wrap(vars(class), scales = "free_y")
# To repeat the same data in every panel, simply construct a data frame that does not contain the faceting variable.
ggplot(mpg, aes(displ, hwy)) + geom_point()
ggplot(mpg, aes(displ, hwy))+
  geom_point(data = transform(mpg, class = NULL), colour = "grey85") +
  geom_point() +
  facet_wrap(vars(class))
###you can display the facet labels at a side of your choice
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(vars(class), scales = "free", nrow = 2, strip.position = "bottom") +
  theme(strip.background = element_blank(), strip.placement = "outside")
##you can do with boxplot as well, or any type of plot.

