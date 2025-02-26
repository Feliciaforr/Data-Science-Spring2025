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

#Anova Test
anova_one_way <- aov(time~poison, data = df) 

#Summary of Anova Test
summary(anova_one_way)