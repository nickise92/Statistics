# A. Using the geom_histogram() function of the ggplot2 package plot the flipper 
# length distribution coloring each species with a different color (hint: use 
# the fill argument of the aes() function to fill the histogram area and the 
# position = "identity" argument of the geom_histogram()). Play with the binwidth 
# argument. Try to insert y = ..density.. in aes(). Do you notice any change?
library(palmerpenguins)
library(ggplot2)

data("penguins")

flipper_hist <- ggplot(data = penguins, aes(x = flipper_length_mm)) +
  geom_histogram(aes(fill = species),
  alpha = 0.5, position = "identity") +
  scale_fill_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(x = "Flipper length (mm)", y = "Frequency",
       title = "Penguin flipper lengths")
#png("./plots/penguin_flipper_lengths_hist")
flipper_hist
#dev.off()

# B. About the flipper length, for each species of penguins compute the:
# 1. sample mean;
# 2. sample median;
# 3. sample standard deviation (use a division by n-1);
# 4. sample variance.
# (hint: to choose only a specific species use
# penguins[penguins$species == "Gentoo",])
stddev_cs <- function(data_vec, removeNA = TRUE) {
  if (removeNA == TRUE) {
    data_vec <- na.omit(data_vec)
  }
  vec_len <- length(data_vec)
  avg <- sum(data_vec)/vec_len
  
  stddev <- sqrt(sum((data_vec - avg)^2) / (vec_len - 1))
  
  return (stddev)
}
# Adelie
# Extrapolate the flipper_length_mm from penguins only of
# the selected species 'Adelie'
fl_adelie <- penguins[penguins$species == "Adelie",]$flipper_length_mm

fl_adelie_mean <- mean(fl_adelie, na.rm = TRUE)
fl_adelie_median <- median(fl_adelie, na.rm = TRUE)
fl_adelie_stddev <- stddev_cs(fl_adelie)
fl_adelie_variance <- var(fl_adelie, na.rm = TRUE)
# Chinstrap
# Extrapolate the flipper_length_mm from penguins only of
# the selected species 'Chinstrap'
fl_chinstrap <- penguins[penguins$species == "Chinstrap",]$flipper_length_mm

fl_chinstrap_mean <- mean(fl_chinstrap, na.rm = TRUE)
fl_chinstrap_median <- median(fl_chinstrap, na.rm = TRUE)
fl_chinstrap_stddev <- stddev_cs(fl_chinstrap)
fl_chinstrap_variance <- var(fl_chinstrap, na.rm = TRUE)
# Gentoo
# Extrapolate the flipper_length_mm from penguins only of
# the selected species 'Gentoo'
fl_gentoo <- penguins[penguins$species == "Gentoo",]$flipper_length_mm

fl_gentoo_mean <- mean(fl_gentoo, na.rm = TRUE)
fl_gentoo_median <- median(fl_gentoo, na.rm = TRUE)
fl_gentoo_stddev <- stddev_cs(fl_gentoo)
fl_gentoo_variance <- var(fl_gentoo, na.rm = TRUE)

# C. Using the geom_boxplot() function of the ggplot2 package plot the boxplot
# of the flipper length variable coloring each species with a different color
# (hint: use the color argument of the aes() function).
flipper_box <- ggplot(data = penguins, aes(x = species, y = flipper_length_mm,
                                           color = species)) +
  geom_boxplot(outlier.alpha = 0) +
  geom_jitter(alpha = 0.5) +
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(x = "Flipper length (mm)", y = "Frequency", 
       title = "Penguin flipper lengths")
#png("./plots/penguin_flipper_lengths")
flipper_box
#dev.off()

# D. Compute the flipper length quartiles for "Gentoo" penguins (Q1, Q2, Q3).
# Method 1: compute one by one
fl_gentoo_Q1 <- quantile(fl_gentoo, probs = 0.25, na.rm = TRUE)
fl_gentoo_Q2 <- quantile(fl_gentoo, probs = 0.50, na.rm = TRUE)
fl_gentoo_Q3 <- quantile(fl_gentoo, probs = 0.75, na.rm = TRUE)
# Alternative method: compute all together
fl_gentoo_Qs <- quantile(fl_gentoo, probs = c(0.25, 0.50, 0.75), na.rm = TRUE)

# E. Calculate the flipper length 40th percentile for the "Adelie" penguins
fl_adelie_40th <- quantile(fl_adelie, probs = 0.40, na.rm = TRUE)



