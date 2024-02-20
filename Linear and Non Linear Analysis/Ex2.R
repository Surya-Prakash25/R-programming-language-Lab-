# Loading the mtcars Data sets 
head(mtcars, 32)

# Finding the Covariance between Weight of Cars and Mileage 
co <- cov(mtcars$wt, mtcars$mpg)
print("Covariance:")
print(co)

# Finding the Pearson Correlation Coefficient between Weight of Cars and Mileage 
cc <- cor(mtcars$wt, mtcars$mpg)
print("Pearson's Correlation Coefficient:")
print(cc)

# Finding the Spearman Correlation Coefficient between Weight of Cars and Mileage 
ccs <- cor(mtcars$wt, mtcars$mpg, method = "spearman")
print("Spearman's Correlation Coefficient:")
print(ccs)

# Scatter Plot 
library(ggplot2)
scatter.smooth(mtcars$wt, mtcars$mpg, main = "Scatter Plot", xlab = "Car Weight", ylab = "Mileage")

# Check if the correlation coefficient is positive or negative 
if (cc > 0) {
  print("Relationship between Car Weight and Mileage is Positive")
} else {
  print("Relationship between Car Weight and Mileage is Negative")
}
