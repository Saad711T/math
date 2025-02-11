# Suppose the probability of passing a certain test is 0.6. A group of 10 students takes the test. 
# 1- PMF: The probability distribution for the number of students who pass the test.
# 2- The probability of at least 7 students passing the test.
# 3- The expected value (Mean) of the distribution.
# 4- The variance of the distribution.
# 5- The standard deviation.
# 6- A bar plot of the probability distribution.

# Inputs
p_pass <- 0.6
n_students <- 10

# 1-find PMF :
x <- 0:n_students
pmf <- dbinom(x, size = n_students, prob = p_pass)
cat("1. PMF:\n")
data.frame(x, pmf)

# 2- At least 7 Students
prob_at_least_7 <- sum(pmf[x >= 7])
cat("\n2. Probability of at least 7 students passing:", prob_at_least_7, "\n")

# 3- Mean, E(X)
E_X <- n_students * p_pass
cat("\n3. E(X):", E_X, "\n")

# 4- Variance, V(X)
V_X <- n_students * p_pass * (1 - p_pass)
cat("\n4. Variance V(X):", V_X, "\n")

# 5- Standard Deviation
std_dev <- sqrt(V_X)
cat("\n5. Standard Deviation:", std_dev, "\n")

# 6- Barplot for PMF
barplot(pmf, names.arg = x, col = "purple",
        main = "Binomial PMF",
        xlab = "Number of Students Passing (x)",
        ylab = "Probability")
