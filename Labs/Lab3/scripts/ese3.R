# Exercise 3 - Elements of probability

# A. Simulate the tossing of a fair dice and consider the following events:
#   A = {1, 2}; B = {2, 3, 6}; C = {1, 4, 5}. (hint: compute P(A), P(B) and P(C)).

# Define the 3 events
A <- c(1, 2)
B <- c(2, 3, 6)
C <- c(1, 4, 5)
AandB <- 2
BandC <- 0

# Number of experiments
N <- 10^5

# Simulate the launches
res <- sample(x = 1:6, size = N, replace = TRUE)

# Initialize the successes for each event and their intersections
succ_event_a <- 0
succ_event_b <- 0
succ_event_c <- 0
succ_a_and_b <- 0
succ_b_and_c <- 0


# Populate the vector of successes
for (i in seq_len(N)) {
  
  # Count how many times event A is successful 
  if (res[i] == A[1]) {
    succ_event_a <- succ_event_a + 1
  } 
  else if (res[i] == A[2]) {
    succ_event_a <- succ_event_a + 1
    # if res[i] == 2, then res[i] is also in the intersection
    # between A and B (= {2})
    succ_a_and_b <- succ_a_and_b + 1
  }
  
  # Count how many times event B is successful
  if (res[i] == B[1]) {
    succ_event_b <- succ_event_b + 1
  }
  else if (res[i] == B[2]) {
    succ_event_b <- succ_event_b + 1
  } 
  else if (res[i] == B[3]) {
    succ_event_b <- succ_event_b + 1
  }
  
  # Count how many times event C is successful
  if (res[i] == C[1]) {
    succ_event_c <- succ_event_c + 1
  } 
  else if (res[i] == C[2]) {
    succ_event_c <- succ_event_c + 1
  }
  else if(res[i] == C[3]) {
    succ_event_c <- succ_event_c + 1
  }
  
  # Count how many times event B and C is successful
  # B and C = { }
  for (j in seq_len(3)) {
    if (res[i] == B[1] && res[i] == C[j]) {
      succ_b_and_c <- succ_b_and_c + 1
    }  
    else if (res[i] == B[2] && res[i] == C[j]) {
      succ_b_and_c <- succ_b_and_c + 1
    }
    else if (res[i] == B[3] && res[i] == C[j]) {
      succ_b_and_c <- succ_b_and_c + 1
    }
  }
  
}

prob_of_a <- cumsum(succ_event_a) / (1:N)
prob_of_b <- cumsum(succ_event_b) / (1:N)
prob_of_c <- cumsum(succ_event_c) / (1:N)
prob_a_and_b <- cumsum(succ_a_and_b) / cumsum(succ_event_b) # P(A) = P(A | B) ==> independence
prob_b_and_c <- cumsum(succ_b_and_c) / cumsum(succ_event_c) # B and C are dependent



# B. Verify that A and B are independent and that B and C are dependent.
library(ggplot2)

df <- data.frame("index" = 1:N, prob_of_a, prob_of_b, prob_of_c, prob_a_and_b, prob_b_and_c)

ggplot(df) + 
  geom_line(aes(x = index, y = prob_of_a, color = "P(A)")) +
  geom_line(aes(x = index, y = prob_a_and_b, color = "P(A|B)")) +
  geom_hline(aes(yintercept = 1/3), 
             linetype = "dashed", color = "red") +
  scale_x_continuous(trans = "log10") + 
  scale_color_manual(name = "Probabilities", 
                     values = c("purple", "green")) +
  theme(legend.position = "bottom") +
  labs(y = "P(A) and P(A|B)", x = "Launches")

ggplot(df) + 
  geom_line(aes(x = index, y = prob_of_b, color = "P(B)")) +
  geom_line(aes(x = index, y = prob_b_and_c, color = "P(B|C)")) +
  geom_hline(aes(yintercept = 1/2), 
             linetype = "dashed", color = "red") +
  scale_x_continuous(trans = "log10") + 
  scale_color_manual(name = "Probabilities", 
                     values = c("blue", "orange")) +
  theme(legend.position = "bottom") +
  labs(y = "P(B) and P(B|C)", x = "Launches")

