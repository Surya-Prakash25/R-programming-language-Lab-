# Load the Women's Data sets 
head(women, 15)

# Scatter Plot 
install.packages("ggplot2")
library(ggplot2)
scatter.smooth(women$height, women$weight, main = "ScatterPlot", xlab = "Height", ylab = "Weight")

# Finding the covariance between Height and Weight of Women
c11 <- cov(women$height, women$height)
c12 <- cov(women$height, women$weight)
c21 <- cov(women$weight, women$height)
c22 <- cov(women$weight, women$weight)

# Constructing the Covariance Matrix 
cm1 <- matrix(data = c(c11, c12, c21, c22), nrow = 2, byrow = TRUE)
print("Covariance Matrix:")
print(cm1)

# Constructing the full Covariance Matrix at a time 
cm2 <- cov(women) 
print("Covariance Matrix:")
print(cm2)

# Finding the Correlation Coefficients between Height and Weight of Women
cc11 <- cor(women$height, women$height)
cc12 <- cor(women$height, women$weight)
cc21 <- cor(women$weight, women$height)
cc22 <- cor(women$weight, women$weight)

# Constructing the Correlation Coefficients Matrix 
cc1 <- matrix(data = c(cc11, cc12, cc21, cc22), nrow = 2, byrow = TRUE)
print("Pearson's Correlation Coefficients:")
print(cc1)

# Constructing the Correlation Coefficients at a time 
cc2 <- cor(women)
print("Pearson's Correlation Coefficients:")
print(cc2)

# Spearman's Correlation Coefficients
cc3 <- cor(women, method = "spearman")
print("Spearman's Correlation Coefficients:")
print(cc3)

# Check if the correlation coefficient is positive or negative
if (cc11 > 0) {
  print("Relationship between Women's Weight and Height is Positive")
} else {
  print("Relationship between Women's Weight and Height is Negative")
}

