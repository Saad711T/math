# suppose that 25% of products of process are defective 3 items selected randomly . inspected and classified D , N


p_defective <- 0.25
total_items <- 3
total_population <- 100
m <- p_defective * total_population
n <- total_population - m
k <- total_items

# 1-find PMF :

x <- 0:k
pmf <- dhyper(x, m, n, k)
cat("1. PMF:\n")
data.frame(x, pmf)

# 2- At least 2 D :
prob_at_least_2D <- sum(pmf[x >= 2])
cat("\n2. Probability of at least 2 D:", prob_at_least_2D, "\n")

# 3- Mean , E(X) :
E_X <- sum(x * pmf)
cat("\n3. E(X):", E_X, "\n")

# 4- Variance , V(X) :
V_X <- sum((x - E_X)^2 * pmf)
cat("\n4. Variance V(X):", V_X, "\n")

# 5- Standard Deviation
std_dev <- sqrt(V_X)
cat("\n5. Standard Deviation:", std_dev, "\n")



# Output - المخرجات
barplot(pmf, names.arg = x, col = "blue",
        main = "Hypergeometric PMF",
        xlab = "Number of Defective Items (x)",
        ylab = "Probability")
