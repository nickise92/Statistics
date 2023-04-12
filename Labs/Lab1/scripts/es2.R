# A. Create the following vectors twice: the first using the colon operator and 
# the second using the seq() command
vec1A <- 1:10
vec1B <- seq(from = 1, to = 10, by = 1)

vec2A <- seq(from = 2, to = 12, by = 5)

# B. Create a 4x2 matrix of all zeros and store it in a variable (mymat). Then 
# replace the second row in the matrix with a vector consisting of a 3 and a 6
mymat <- matrix(data = 0, nrow = 4, ncol = 2)
mymat[2, ] <- c(3, 6)

# C. Create a vectorx wich consists of 20 equally spaced points in the range from 
# –𝛑 to +𝛑. Create a y vector wich is sin(x).
x <- seq(from = -pi, to = pi, length.out = 20) 
y <- sin(x)

# D. Create a 4x6 matrix of random integers, each in the range from -5 to 5; store
# it in a variable (mat). Create another matrix that store for each element the 
# absolute value of the corresponding element in the original matrix (mat_pos).
mat <- matrix(data = runif(36, min = -5, max = 5), nrow = 4, ncol = 6)
mat_pos <- matrix(data = abs(mat), nrow = 4, ncol = 6)

# E. Plot exp(x) for values of x ranging from -2 to 2 in steps of 0.1. Put an 
# appropriate title on the plot, and label the axes.
x <- seq(from = -2, to = 2, by = 0.1)
xdata <- exp(x)
plot(x, xdata, 
    main = "Value of exp(x)",
    xlab = "Ranges",
    ylab = "Exp(x)")

# F. Create a vector x with values ranging from 1 to 100 in steps of 5. Create a 
# vector y wichh is the square root of each value in x. Plot these points. Now, 
# use barplot() function instead of plot() to get a bar chart. Keep both plots 
# together.
x <- seq(from = 1, to = 100, by = 5)
y <- sqrt(x)
plot(x, y, 
     main = "Square Roots - Plot", 
     xlab = "value", 
     ylab = "square roots")
barplot(height = y, breaks = x,
        main = "Square Roots - Bar chart",
        xlab = "value", 
        ylab = "square roots")










