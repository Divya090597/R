# Creating Data
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

# Creating a data frame
poll_data <- data.frame(Name, ABC_political_poll_results, CBS_political_poll_results)

# Bar plot for ABC political poll results
barplot(poll_data$ABC_political_poll_results, names.arg = poll_data$Name, col = "blue", main = "ABC Political Poll Results",
        xlab = "Candidate Name", ylab = "Result")

# Bar plot for CBS political poll results
barplot(poll_data$CBS_political_poll_results, names.arg = poll_data$Name, col = "red", main = "CBS Political Poll Results",
        xlab = "Candidate Name", ylab = "Result")
