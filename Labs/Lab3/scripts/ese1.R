# A. Create the Lab3 project. Use the same structure used before (scripts,
# plots, and data directories).
# B. Write a function to calculate the sum of integer numbers from 1 to n.
sum <- function(n) {
  res = 0 # We need this variable to store the running sum
  for (i in 1:n) { # i is the iterator variable
    res <- res + i # i is added to the sum 
  }
  return (res)
}

# C. Write a function to calculate the product of integers from 1 to n, 
# also known as n!
fact <- function(n) {
  res = 1 # We need this variable to store the running product
  for (i in 1:n) { # i is the iterator variable
    res <- res * i # res is multiplied by i at every cycle
  }
  return (res)
}

# D. Rewrite C. but recursively (hint: call the function itself inside
# the loop, remember to return 1 when n is equal to 0).
recursive_fact <- function(n) {
  if (n == 0) # First base-case: n is 0, 0! = 1 by definition
    return (1)
  if (n == 1) # Second base-case: n is 1, 1! = 1 by definition
    return (1)
  if (n >= 2) # n >= 2: multiply n by the recursive_fact applied to n-1.
    # eventually we hit either one of the base-cases above and we got the
    # result.
    return (n * (recursive_fact(n-1)))
}


