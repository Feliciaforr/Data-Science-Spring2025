#Date:1/27/2025 Author:F.Forrester Purpose: Correlation Test

#Install Library
if(!require(devtools)) install.packages("devtools") devtools::install_github("kassambara/ggpubr")

#Load Library
library("ggpubr")

# Load dummy data
my_data <- mtcars 

head(my_data, 6)

#Test relationship between wt and mpg

# Hypothesis: When wt of car is more, then mpg is less and when wt is less the mpg is more


res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 

#Print Value
res

#
res2 <-cor.test(my_data$wt, my_data$mpg, method = "spearman")

res2


#Output: Pearson's
      Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 


#Output: Spearman 
      Spearman's rank correlation rho

data:  my_data$wt and my_data$mpg
S = 10292, p-value = 1.488e-11
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
-0.886422 

