## Variables - Vectors
x <- 1:10 # create a vector of 10 elements, from 1 to 10.

## Concatenate vectors
x <- c(x, 2) # Add 2 at the end of x

## Vector Sequence
y <- seq(from = 0, to = 0.5, by = 0.1) # create a sequence from 0.0 to 0.5
# seq_along() and seq_len()

## Vector repetitions
# To repeat a vector use the rep() function:
z <- 1:3
r <- rep(z, times=3)
r

# Cumsum - somma di ogni elemento fino all'indice specificato
cumsum(x) 

# Matrices
mat1 <- cbind(c(1,2,3), c(4,5,6)) # concatenate vectors by columns
mat1

mat2 <- rbind(c(1,2,3), c(4,5,6)) # concatenate vectors by rows
mat2

mat3 <- matrix(data=c(1,2,3,4,5,6), nrow=3, ncol=2)
mat3

# byrow - FALSE, values order by column, 1 and 4 will be on the same row [1]
mat4 <- matrix(data = c(1,2,3,4,5,6), nrow = 3, ncol = 2, byrow = FALSE)
mat4

# byrow - TRUE, values ordered by row: 1 and 2 will be on the same row [1]
mat5 <- matrix(data = c(1,2,3,4,5,6), nrow = 3, ncol = 2, byrow = TRUE)
mat5

x <- 1:6
mat <- matrix(data = x, nrow = 3, ncol = 2, byrow = TRUE)
View(mat) # Visualize the matrix
mat[1:3, 2] # Extract all rows and only second column
mat[, 2] # same as above
mat[2,] # Extract only the second row
mat[2, 1:2] # 2 row, 1 and 2 column.
mat[-2,] # all rows except 2nd.

## Usefull matrices
# Matrix with all elements equals
mzero  <- matrix(data = 0, nrow = 3, ncol = 3)
mzero

mone <- matrix(data = 1, nrow = 3, ncol = 3)
mone

mdiag <- diag(3) # Identity 3x3 
mdiag

## Matrices multiplications - %*%
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
# element wise: (element by element)
vew = v1 * v2
# Matrix product:
mp = t(v1) %*% v2
mp

## Text variables - Character
month <- "March"
vecs <- c("ciao", "buongiorno")
paste(vecs) # without arguments is equals to 
vecs
paste(vecs, collapse = " ") # collapse the elements in a single string, spearated by a space


## Arrays - can have more than 2 dimensions
exampleArray <- array(c(1:12), dim = c(2,3,2))
exampleArray

## Data frames - bidimensional structure
df1 <- data.frame(
  mount = c("Everest", "K2", "Fuji"),
  height = c(8848, 8611, 3776),
  todo = c(TRUE, TRUE, FALSE)
)

# Access to 1st column
df1$mount
# Access to 2nd column
df1[2]

## if, else, for, while
A <- 1
B <- 2

# Equals '=='; NOT-equals '!='; AND '&'; OR '|'
if (A == B) {
  paste("A e B sono uguali")
} else {
  paste("A e B sono diversi")
}

for (variable in vector) {
  
}

## Graphical representation - plot()
# To create a plot you can use the built-in plot() function. Here's an example
# of how to create a basic scatterplot:
# Create some sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

# Multiple plot in the same image
par(mfrow = c(2,2)) # show plots in a grid 2x2

# Create a scatterplot
plot(x, y)
plot(c(1:5)^2, type = "l")

## Types of plot
# Bar plots - used to display categoriacl data, where each bar represents a category
# and its height represents the frequency or proportion of that category
# Example
ages = 20:29 # Ages value
students = c(2, 1, 5, 3, 4, 2, 0, 2, 1, 0) # frequency
barplot(students, 
        xlab = "Ages of students",
        ylab = "Number of students",
        names.arg = ages)

# Line plots 
# Generate 100 random values between 10 and 20
daily_income <- runif(100, min = 10, max = 20)
plot(daily_income,
     type = "l",
     xlab = "Day",
     ylab = "Daily Income",
     main = "Daily incomes over 100 days")

# Histograms
# Generate 100 random values between 40 and 80
weights <- runif(100, min = 40, max = 80)
# To see the first elements
head(weights)
hist(weights, 
     breaks = c(40, 50, 60, 70, 80))

# Box plot, used to display the distribution of a continuous variable, where the box
# represents the range of the middle 50% if values, the line within the box represents
# the median, and the whiskers extend to the most extreme values within 1.5 times 
# the interquartile range
# Generate 50 random values between 40 and 80
height <- c(runif(50, min = 40, max = 80), 
            runif(50, min = 45, max = 70))
group <- rep(c("A", "B"), each = 50)

boxplot(height ~ group, 
        main = "Heights by group boxplots")

# Scatter plots, Heatmaps, Density plot... (see slide)

# Export graphics
pdf("./plots/gtest.pdf")
plot(1:10, 21:30)
dev.off()

# Save and Load variables
save() # To save variables in .RData or
# .RData is a binary file format used to save one or more R objects
saveRDS() # To save a variable in .RDS
# .RDS is a binary file format used to save a single R object in a file.

# LOAD
load() # To load from .RData file
readRDS() # To load from .RDS file

# Function declarations
func_name <- function(x, y) { # x, y are args
  z <- x + y
  return(z) # return the sum between x and y
}

func_name(1,2)























