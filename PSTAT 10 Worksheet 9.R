binom_pmf <- dbinom(x = 5, size = 8, prob = 0.2)
print(binom_pmf)

set.seed(123)
size <- 200
prob <- 0.03
n <- 7
misshaped_donuts <- rbinom(n = n, size = size, prob = prob)
print(misshaped_donuts)

set.seed(123)
rolls <- rbinom(n = 1, size = 5, prob = 1/6)
print(rolls)

par(mfrow=c(2,1))
successes <- 0:10
plot(successes, pmf, type = "h", xlab = "Number of Successes", ylab = "Probability", main = "Binomial Distribution with n = 25, p = 0.4")
prob <- 0.7
pmf <- dbinom(successes, size = 10, prob = prob)
plot(successes, pmf, type = "h", xlab = "Number of Successes", ylab = "Probability", main = "Binomial Distribution with n = 10, p = 0.7")

size <- 25
prob <- 0.4
successes <- 0:size
pmf <- dbinom(successes, size, prob)
data.frame(Successes = successes, Probability = pmf)
