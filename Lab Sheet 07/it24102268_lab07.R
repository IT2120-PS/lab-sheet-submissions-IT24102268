# Uniform distribution between 0 and 40
a <- 0
b <- 40

# P(10 <= X <= 25)
prob1 <- (25 - 10) / (b - a)
prob1


lambda <- 1/3

# P(X <= 2)
prob2 <- pexp(2, rate = lambda)
prob2


mu <- 100
sigma <- 15

# P(X > 130)
prob3_i <- 1 - pnorm(130, mean = mu, sd = sigma)
prob3_i


# 95th percentile
iq_95 <- qnorm(0.95, mean = mu, sd = sigma)
iq_95
