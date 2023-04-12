# A. Load the sunspot.year dataset from the datasets package. Use data("sunspot.year")
# and then sunspot.year to load in the workspace.
data("sunspot.year")
sunspot.year
# B. See the documentation to obtain information about the dataset and create a 
# sequence vector corresponding to the years. Call this variable year.
year <- seq(from = 1700, to = 1988)
# C. Create a variable called sunspot, containing the values from the dataset.
sunspot <- sunspot.year
# D. Put together the variables into a data.frames object.
sunspot_df = data.frame(
  yy = year,
  value = sunspot)
# E. Make a line plot of sunspots vs. year.
plot( sunspot_df$value, sunspot_df$yy, type = "l", xlab = "Sunspots", ylab="Year")
# F. Superimpose data points as red asterisks. Add a second layer to the plot by 
# using the points() function. USe pch="*" and col="red" in the points() arguments.
points(sunspot_df$value, sunspot_df$yy, pch = "*", col = "red")
# G. Create a title "Sunspots by year"
title("Sunspots by year")
# H. Make a column with 3 panels for the plot crated in G., a barplot of sunspots 
# (you can use the as.vector() function to convert a data type to a vector data type),
# and a histogram of sunspots.
par(mfcol = c(3,1))
barplot(height = as.vector(sunspot_df$value), as.vector(sunspot_df$yy), main="Sunspot by year - barplot",
        xlab="Year", ylab="Sunspots")
hist(sunspot_df$value, breaks = 30, 
     main="Sunspot by year - histogram",
     xlab="Year")

# I. Save the plot in the ./plots directory of the projet as a .png file.
png("./plots/sunspot.png")
par(mfcol = c(3,1))
plot( sunspot_df$value, sunspot_df$yy, type = "l", 
      main = "Sunspots by year",
      xlab = "Sunspots",
      ylab="Year")
points(sunspot_df$value, sunspot_df$yy, pch = "*", col = "red")
barplot(height = as.vector(sunspot_df$value), as.vector(sunspot_df$yy), main="Sunspot by year - barplot",
        xlab="Year", ylab="Sunspots")
hist(sunspot_df$value, breaks = 30, 
     main="Sunspot by year - histogram",
     xlab="Year")
dev.off()

# J. Save the data frame as a .csv file in the ./data directory of the project
save(sunspot_df, file = "./data/sunspot_dataframe.csv")














