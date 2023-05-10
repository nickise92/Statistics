# A. Simulate the tossing of a fair dice and verify through the definition
# that the event E = {2, 3} has probability 1/3. S = {1, 2, 3, 4, 5, 6};
# E = {2, 3}; P(E) = 1/3 (hint: generate a sequence of integer random
# numbers between 1 and 6 using the sample() function)
n <- 1e5 # 10^5 experiments.
E <- c(2, 3) # The event E
S <- 1:6 # The set of possible values

set.seed(123) # For reproducibility
# Sample n elements from 1 to 6
res <- sample(S, n, TRUE)

nE <- 0 # Initialize a new variable to store results
for (i in 1:n)
  nE[i] <- sum(res[i] == E) # 1 when res[i] = 2,3, 0 otherwise

# Compute the probability by dividing successes by launches
pE <- cumsum(nE) / (1:n)

# B. Plot the first 40 outcomes of the experiment
library(ggplot2)

#pdf("./plots/fair_dice_sim")
#plot(x = 1:40, y = res[1:40],
#     main = "Tossing a fire dice",
#     xlab = "First 40 launches",
#     ylab = "Results")
#dev.off()

df <- data.frame("index" = seq_along(res), "res" = res,
                 "pE" = pE)
# pdf("./plots/fair_dice_exp")
ggplot(data = df[1:40,], aes(x = index, y = res)) + 
  geom_point() + 
  labs(title = "Tossing a fair dice", 
       x = "First 40 launches", y = "Results")
# dev.off()

# C. Plot the convergence of P(E) at the value obtained from the classical 
# definition (1/3) 
# (hint: the frequentist approach says that, as the number of trials approaches
# infinity, the relative frequency will converge exactly to the true probability)

plot(x = 1:n, y = pE, type="l", log = "x")
abline(h = 1/3, col = "red")

ggplot(data = df, aes(x = index, y = pE)) + geom_line() +
  # horizontal line corresponding to the true probability
  geom_hline(aes(yintercept = 1/3),
            linetype = "dashed", color = "red") + 
  # Transforming the x-axis in log-scale
  scale_x_continuous(trans = "log10") + 
  labs(title = "Probability of event E = {2, 3}",
       subtitle = "From launch 1 to launch 10^5",
       x= "Launches", y = "Results")










