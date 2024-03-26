#install.packages("corrgram")
#library(corrgram) 

#loading the Iris Data sets 
head(iris[1:5,]) 
head(iris[51:55,]) 
head(iris[101:105,]) 
iris.nospecies<- iris[,-5] 

#Constructing the Covariance Matrix 
coi = cov(iris.nospecies) 
print("Covariance Matrix") 
print(coi) 

#Finding the Multiple Pearson's Correlation Coefficients
cci = cor(iris.nospecies) 
print("Multiple Pearson's Correlation Coefficients") 
print(coi) 

#Finding the Multiple Spearman Correlation Coefficients
ccs = cor(iris.nospecies, method = "spearman") 
print("Multiple Spearman's Correlation Coefficients") 
print(ccs) 

#Analysis of Iris Data Using Box Plot 
qplot(Species, Petal.Length, data=iris, geom="boxplot", fill=Species) 

#Analysis of Iris Data Using Normal Density 
qplot (Petal.Length, data=iris, geom="density", alpha=I(.7),fill=Species)

if(cci[4,1] > 0){
  print("Relationship b/w Petal Width and Sepal Length is Positive") 
 }else{
  print("Relationship b/w Petal Width and Sepal Length is Negative")
 } 

if(cci[2,1] > 0){
  print("Relationship b/w Sepal Width and Sepal Length is Positive") 
  }else{ 
  print("Relationship b/w Sepal Width and Sepal Length is Negative")
} 

#Relationship between the petal lengths of the different iris species 
corrgram(iris, lower.panel=panel.conf, upper.panel=panel.pts) 
# Overlapping Density Plot for Three Species 
corrgram(iris, lower.panel=panel.pie, upper.panel=panel.pts,diag.panel=panel.density, main=paste0("corrgram of petal and sepal", "measurements in iris data set"))
