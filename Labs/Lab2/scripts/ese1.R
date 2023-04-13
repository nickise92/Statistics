# B. Install the palmerpenguins package, load the penguins dataset.
install.packages("palmerpenguins")
library("palmerpenguins")

data(package = "palmerpenguins")
data("penguins")

# C. Compute the mean, the standard deviation and the median for the numeric 
# variables of the dataset.
billLengthMean <- mean(penguins$bill_length_mm, na.rm = TRUE)
billDepthMean <- mean(penguins$bill_depth_mm, na.rm = TRUE)
flipperLengthMean <- mean(penguins$flipper_length_mm, na.rm = TRUE)
bodymassMean <- mean(penguins$body_mass_g, na.rm = TRUE)

billLengthSD <- sd(penguins$bill_length_mm, na.rm = TRUE)
billDepthSD <- sd(penguins$bill_depth_mm, na.rm = TRUE)
flipperLengthSD <- sd(penguins$flipper_length_mm, na.rm = TRUE)
bodymassSD <- sd(penguins$body_mass_g, na.rm = TRUE)

billLengthMedian <- median(penguins$bill_length_mm, na.rm = TRUE)
billDepthMedian <- median(penguins$bill_depth_mm, na.rm = TRUE)
flipperLengthMedian <- median(penguins$flipper_length_mm, na.rm = TRUE)
bodymassMedian <- median(penguins$body_mass_g, na.rm = TRUE)

