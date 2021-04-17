set.seed(100)
n <- 40
m <- 1000
lambda <- 0.2
sdom = NULL #sdom = sampling.distribution.of.means
for (i in 1 : m) sdom = c(sdom, mean(rexp(n,lambda)))
z.sdom <- (sdom - mean(sdom))/sd(sdom)
z.sdom <- sort(z.sdom)


# importing libraries
library(ggplot2)
library(qqplotr)

# creating random data
random_values = rnorm(500, mean = 90, sd = 50)

# ploting data without line and labels
ggplot(mapping = aes(sample = random_values)) + stat_qq_point(size = 2)


# ploting data without line and labels
ggplot(mapping = aes(sample = z.sdom)) + stat_qq_point(size = 1)
