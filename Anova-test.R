#Author: F.Forrester Date: 2/24/2025 Purpose: To test ANOVA function

# Importing dummy dataset in R
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

#Create hypothesis
#Treatment types are effective against all poison types/ there is a significance difference between treatment and poison types.


#Read the dataset in a variable
df <- read.csv(PATH) 

#Understand levels or classes in your dataset
levels(factor(df$treat))

#Optional: Plot data
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

#Applying Anova Test Function
anova_one_way <- aov(time~poison, data = df) 

#Summary of Anova Test
summary(anova_one_way)

 Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

