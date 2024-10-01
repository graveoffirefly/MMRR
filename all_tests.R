# Parametric Tests
# T-test
# Z-test
# One-Way ANOVA
# Two-Way ANOVA

# Non-Parametric Tests:
# Friedman Test
# Kruskal-Wallis Test
# Sign Test
# Wilcoxon Signed-Rank Test

#1. T-test
#Compares the means of two groups.
group1 <- c(85, 90, 78, 92, 88)
group2 <- c(80, 85, 83, 87, 89)
# Perform t-test
t.test(group1, group2, alternative = "two.sided")


#2. Z-test (Parametric)
#Compare sample mean to a population mean (e.g., average height comparison):
install.packages("BSDA")
library(BSDA)
sample_data <- c(170, 165, 172, 160, 168)
pop_mean <- 167
pop_sd <- 5
z.test(sample_data, mu = pop_mean, sigma.x = pop_sd, alternative = "two.sided")


#3. Friedman Test (Non-parametric)
#Comparing ratings given by the same group under different conditions:
# Sample data
condition1 <- c(5, 6, 7, 8)
condition2 <- c(6, 7, 6, 9)
condition3 <- c(7, 8, 6, 10)
data <- data.frame(subject=factor(1:4), condition1, condition2, condition3)
# Perform Friedman test
friedman.test(as.matrix(data[,-1]))


#4. Kruskal-Wallis Test (Non-parametric)
#Comparing customer satisfaction scores across three stores:
# Sample data
store1 <- c(80, 85, 88, 90, 84)
store2 <- c(70, 75, 78, 82, 76)
store3 <- c(92, 88, 91, 94, 90)

# Perform Kruskal-Wallis test
kruskal.test(list(store1, store2, store3))


#5. Sign Test (Non-parametric)
#Checking if a medication improves symptoms compared to the baseline:
# Sample data
before <- c(140, 130, 150, 160, 145)
after <- c(135, 125, 148, 155, 140)

# Perform Sign test
# Install if needed: install.packages("BSDA")
library(BSDA)
SIGN.test(before, after)


#6. Wilcoxon Signed-Rank Test (Non-parametric)
#Testing change in blood pressure before and after treatment:
# Sample data
before <- c(120, 122, 130, 129, 125)
after <- c(118, 121, 128, 126, 123)

# Perform Wilcoxon signed-rank test
wilcox.test(before, after, paired = TRUE)


#7. One-Way ANOVA (Parametric)
#Compare test scores of students from three different schools:
# Sample data
school1 <- c(75, 78, 82, 85, 80)
school2 <- c(70, 74, 79, 82, 77)
school3 <- c(80, 83, 87, 89, 85)

# Combine into a single data frame
scores <- c(school1, school2, school3)
group <- factor(rep(1:3, each=5))

# Perform One-way ANOVA
anova_result <- aov(scores ~ group)
summary(anova_result)


#8. Two-Way ANOVA (Parametric)
#Testing the effect of teaching method and gender on student test scores:
scores <- c(85, 90, 78, 92, 88, 83, 89, 84, 80, 86)
teaching_method <- factor(rep(c("Method1", "Method2"), each=5))
gender <- factor(rep(c("Male", "Female"), times=5))
# Perform Two-way ANOVA
anova_result <- aov(scores ~ teaching_method * gender)
summary(anova_result)








