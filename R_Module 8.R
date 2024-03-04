# Load required packages
install.packages("plyr")
library(plyr)

# Import dataset into R
x <- read.table(file.choose(), header = TRUE, sep = ",")
x

#run plyr generates for the mean of both Age and Grade split by gender
y = ddply(x,"Sex",transform, Grade.Average=mean(Grade))
y

#Print this to a file
write.table(y,"Sorted_Average")

#Generate a CSV
write.table(y,"Sorted_Average",sep=",") 

#Filter the names in the given list that contain the letter i.
newx = subset(x,grepl("[iI]",x$Name))

#write this subset to a file
write.table(newx,"DataSubset",sep=",") 
