# Creating vectors based on the provided data
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

# Creating a dataframe
df <- data.frame(Freq, bloodp, first, second, finaldecision)

# Side-by-side boxplot

par(mfrow = c(1, 2))

boxplot(bloodp ~ first, data = df, main = "Boxplot of first Assessment", xlab = "first Assessment", ylab = "Blood Pressure")

boxplot(bloodp ~ second, data = df, main = "Boxplot of second Assessment", xlab = "second Assessment", ylab = "Blood Pressure")

# Histogram
hist(df$bloodp, main = "Histogram of Blood Pressure", xlab = "Blood Pressure")
