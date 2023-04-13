# B. Install the palmerpenguins package, load the penguins dataset.
install.packages("palmerpenguins")
library("palmerpenguins")

data(package = "palmerpenguins")
data("penguins")

# C. Compute the mean, the standard deviation and the median for the numeric 
# variables of the dataset.
bill_length_mean <- mean(penguins$bill_length_mm, na.rm = TRUE)
bill_depth_mean <- mean(penguins$bill_depth_mm, na.rm = TRUE)
flipper_length_mean <- mean(penguins$flipper_length_mm, na.rm = TRUE)
body_mass_mean <- mean(penguins$body_mass_g, na.rm = TRUE)

bill_length_sd <- sd(penguins$bill_length_mm, na.rm = TRUE)
bill_depth_sd <- sd(penguins$bill_depth_mm, na.rm = TRUE)
flipper_length_sd <- sd(penguins$flipper_length_mm, na.rm = TRUE)
body_mass_sd <- sd(penguins$body_mass_g, na.rm = TRUE)

bill_length_median <- median(penguins$bill_length_mm, na.rm = TRUE)
bill_depth_median <- median(penguins$bill_depth_mm, na.rm = TRUE)
flipper_length_median <- median(penguins$flipper_length_mm, na.rm = TRUE)
body_mass_median <- median(penguins$body_mass_g, na.rm = TRUE)

# D. Create a function called stat_auto that simultaneously returns both the mean 
# and the standard deviation of a given vector (hint: return an object of type list
# or simply a vector). Then try it on the same numeric variables in C. to check the
# results (hint: if you obtain NA maybe you forgot to remove NA terms in vecotr)
stat_auto <- function(data_vec) {
  data_mean <- mean(data_vec, na.rm = TRUE)
  data_sd <- sd(data_vec, na.rm = TRUE)
  
  return (as.list(dataMean, dataSD))
}

bill_length <- stat_auto(penguins$bill_length_mm)
bill_depth <- stat_auto(penguins$bill_depth_mm)
flipper_length <- stat_auto(penguins$flipper_length_mm)
body_mass <- stat_auto(penguins$body_mass_g)

# E. Create 
