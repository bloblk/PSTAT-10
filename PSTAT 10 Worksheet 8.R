num_vector <- 5:20
set.seed(123)
sample_with_replacement <- sample(num_vector, 5, replace = TRUE)
print(sample_with_replacement)
set.seed(123)
sample_without_replacement <- sample(num_vector, 5, replace = FALSE)
print(sample_without_replacement)

prob <- c(0, NA, 0.4, 0.1, 0.03)
sum_prob <- sum(prob, na.rm = TRUE)
A <- 0.4 / sum_prob
prob[2] <- A
prob
P_X_lt_2 <- prob[1]
P_X_lt_2
mean_X <- sum(1:5 * prob)
mean_X
cumulative_probabilities <- cumsum(prob)
cumulative_probabilities

barplot(cumulative_probabilities, ylim = c(0, 1), names.arg = 1:5,
        xlab = "X", ylab = "Cumulative Probability",
        main = "Cumulative Distribution Function of X")
factorial(32)
choose(5,1)* choose(4,1)* choose(3,1)
choose(85,10)
