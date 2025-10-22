
setwd("C:\Users\MINAZ \Desktop \PS Lab10 it24102268

# Question 01
# Part 1
observed <- c(55, 62, 43, 46, 50)
prob <- c(0.2, 0.2, 0.2, 0.2, 0.2)
chisq.test(x = observed, p = prob)

# Part 2
# P-value = 0.351 > 0.05 - Do not reject H0

# Question 02
# Part 1
file path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt"
housetasks <- read.delim(file path, row.names - 1)
housetasks

# Part 2
chisq <- chisq.test(housetasks)
chisq
# P-value = 2.2e-16 < 0.05 - Reject H0

# Exercise
# Part i: Hypotheses
# HO: pA = pB = pC = pD = 0.25
# Hl: At least one probability is different

# Part ii: Chi-squared test
observed <- c(120, 95, 85, 100)
prob <- c(0.25, 0.25, 0.25, 0.25)
result <- chisq. test(x - observed, p = prob)
result

# Part iii: Conclusion
# 0.08966 > 0.05 - do not reject H0