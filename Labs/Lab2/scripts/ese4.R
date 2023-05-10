# Exercise 4 - Multiple boxplots from scratch
# A. Generate random data with some structure, and create one data set for
# each day of the week (hint: use the for() cycle, data should have 7 columns).
# At the end you should obtain a matrix with N rows (N = number of random number
# to generate each time) and 7 columns (one for each day of the week).
library(ggplot2)
# Number of random numbers to generate
N <- 100
# Days in a week
days <- 7
# Create the matrix
data <- matrix(0, ncol = days, nrow = N)
# Fill the matrix with random values
for (day in seq_len(days)) {
  #data[, day] <- 5*cos(day/3) + runif(N)
  data[, day] <- 6*sin(day/5) + runif(N)
}

# B. Go from a wide to a long data format. You should create a data.frame object
# with exactly two columns. One contains the values created in A., the other 
# contains the corresponding day of the week.
# Put all the matrix values in a vector
data_vec <- c(data)
# Day of the week
week_day <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
# Create the data frame
data_df <- data.frame("Value" = data_vec, "Day" = rep(week_day, each = N))

# C. Plot the seven boxplots (one for each day of the week) in one graph, 
# horizontally oriented
data_plots <- ggplot(dat = data_df, aes(x = Day, y = Value )) +
  geom_boxplot() +
  coord_flip() +
  scale_x_discrete(limits = rev(week_day)) +
  labs(y = "Randomly created values",
       x = "Days of the week",
       title = "Randomly generated values",
       subtitle = "grouped by day of the week")

#png("./plots/random_generated_value2")
data_plots
#dev.off()
  
  
  
  
  
  
  