a <- 1
b <- 5
x <- seq(from = a, to = b, by = 0.01)
pdf_x <- dunif(x, min = a, max = b)
plot(x, pdf_x, type = "l", xlab = "X", ylab = "PDF", main = "PDF of X ~ UNIF(1, 5)", lwd = 2)
prob <- punif(3.5, min = a, max = b) - punif(2, min = a, max = b)
print(prob)

mean <- 80
sd <- 12
prob <- pnorm(95, mean = mean, sd = sd) - pnorm(65, mean = mean, sd = sd)
print(prob)
prob <- pnorm(74, mean = mean, sd = sd)
print(prob)

mean_iq <- 100
sd_iq <- 16
prob <- pnorm(116, mean = mean_iq, sd = sd_iq) - pnorm(84, mean = mean_iq, sd = sd_iq)
percentage <- prob * 100
print(percentage)
iq_score <- qnorm(0.98, mean = mean_iq, sd = sd_iq)
print(iq_score)

set.seed(123)
numbers <- 1:100
winning_numbers <- sample(numbers, size = 5, replace = FALSE)
print(winning_numbers)
set.seed(456)
numbers <- 1:100
winning_numbers <- sample(numbers, size = 5, replace = FALSE)
print(winning_numbers)

normal_variates <- round(rnorm(n = 100, mean = 75, sd = 10))
print(normal_variates)
num_sd <- 2
num_variates_outside <- sum(pnorm(c(-num_sd, num_sd), mean = 75, sd = 10) < c(0.025, 0.975))
print(num_variates_outside)

errorsperpage <- 750 / 500
prob_no_errors <- ppois(0, lambda = errorsperpage)
print(prob_no_errors)
prob_exactly_4_errors <- dpois(x = 4, lambda = errorsperpage)
print(prob_exactly_4_errors)

mean_time_between_arrivals <- 2
prob_less_than_one_minute <- pexp(1, rate = 1 / mean_time_between_arrivals)
print(prob_less_than_one_minute)

