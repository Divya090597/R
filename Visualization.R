# Import dataset into R
melanoma <- read.table(file.choose(), header = TRUE, sep = ",")
melanoma


#Base graphics
plot(melanoma$age, melanoma$thickness, xlab = "Age", ylab = "Thickness",pch=21,col=rainbow(12), main = "Scatter plot of Age vs Thickness",cex=1.0)

plot(melanoma$age, melanoma$ulcer, xlab = "age", ylab = "ulcer",pch=21,col=heat.colors(12), main = "Scatter plot of ulcer by age",cex=1.0)

#install.packages(“lattice”)
library(lattice) 
xyplot(age~thickness, data=x, pch=".",cex=2.0)


histogram( ~ age | ulcer, data = melanoma,
           xlab = "Age", type = "density",
           panel = function(x, ...) {
             panel.histogram(x, ...)
             panel.mathdensity(dmath = dnorm, col = "red",
                               args = list(mean=mean(x),sd=sd(x)))
           } )

wireframe(volcano, shade = TRUE, aspect = c(61/87, 0.4),light.source = c(10,0,10))

#ggplot2 graphics
install.packages("ggplot2")
library(ggplot2)
ggplot(melanoma, aes(x=age,y=thickness))+geom_line(linetype=3)
ggplot(melanoma, aes(x=age,y=thickness))+geom_point()

