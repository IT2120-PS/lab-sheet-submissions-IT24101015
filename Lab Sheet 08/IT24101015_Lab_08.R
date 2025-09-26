setwd("C:\\Users\\Malindu\\Downloads\\Lab 08-20250923")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
weights <- data$Weight.kg.

mean(weights)
var(weights)

set.seed(123)  

sample_means <- c()
sample_vars <- c()

for (i in 1:30) {
  samp <- sample(weights, 5, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_vars[i] <- var(samp)
}

sample_means
sample_vars

mean(sample_means)
var(sample_means)

