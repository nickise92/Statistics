# A. The first line is the hours of a day, and the second line is the recorder
# temperature at each of those times. The first value of 0 for the hours represents
# midnight.
hours <- seq(from = 0, to = 21, by = 3)
temp <- c(55.5, 52.4, 52.6, 55.7, 75.6, 77.7, 70.3, 66.6)

# B. Plots the data using black '+' symbols.
par(mfrow = c(1,1))
plot(hours, temp, pch = "+")

# C. Note that it is difficult to see the point at time 0 since it fall son the
# y-axis. Change the axis range using xlim arguments to improve visualization.
plot(hours, temp, pch="+", xlim = c(-1, 22))

# D. Create a function which takes as input a measure in cm and returns it in inches
# (2.54cm = 1inch).
cmToInch <- function(cm) {
  return (cm / 2.54)
}
# E. Save the plot as a .pdf file in the ./plots directory of the project. Plot it 10cm x 10cm.
# (see the arguments of the pfd() function)
pdf("./plots/temp_by_hours", width = cmToInch(10), height = cmToInch(10))
plot(hours, temp, pch = "+", xlim = c(-1, 22))
dev.off()




