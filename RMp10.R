#friendman1
person <- rep(1:5, each = 4)
drug <- rep(1:4, times = 5)   
score <- c(30, 18, 18, 44, 
           28, 10, 30, 26, 
           16, 22, 38, 28, 
           34, 24, 34, 14, 
           14, 20, 20, 30)    
data <- data.frame(person, drug, score)
result <- friedman.test(score ~ drug | person, data = data)
print(result)

#friedman2
person <- rep(1:10, each = 3)  # 10 patients, repeated for each drug
drug <- rep(1:3, times = 10)   # 3 drugs, repeated for each patient
score <- c(4, 5, 2, 
           6, 6, 4, 
           3, 8, 4, 
           4, 7, 3, 
           3, 7, 2, 
           2, 3, 1, 
           4, 6, 2, 
           7, 6, 4, 
           6, 4, 3, 
           5, 5, 2)    # reaction times from the table
data <- data.frame(person, drug, score)
data
result <- friedman.test(score ~ drug | person, data = data)
print(result)

#kruskal1
x <- c(2.9, 3.0, 2.5, 2.6, 3.2)
y <- c(3.8, 4.7, 4.0, 2.4)
z <- c(2.8, 3.4, 3.7, 2.2, 2.0)

kruskal_test <- kruskal.test(list(x, y, z))
kruskal_test

#kruskal2
# Data for each group
group_A <- c(1, 5, 8, 17, 16)
group_B <- c(2, 16, 5, 7, 4)
group_C <- c(1, 1, 3, 7, 9)
group_D <- c(2, 15, 2, 9, 7)

# Combine all groups into a single vector
combined_data <- c(group_A, group_B, group_C, group_D)

# Create a factor to represent the group labels
group_labels <- factor(c(rep("A", length(group_A)),
                         rep("B", length(group_B)),
                         rep("C", length(group_C)),
                         rep("D", length(group_D))))

# Perform the Kruskal-Wallis test
kruskal.test(combined_data ~ group_labels)


#Q2
#salaries for the three groups in thousands
a <- c(28, 46, 59, 71, 83)
b <- c(50, 60, 65, 72, 77)
c <- c(23, 35, 39, 45, 49)

kruskal_test <- kruskal.test(list(a, b, c))
kruskal_test

#pval is less than 0.05  therefore reject Ho (there is a difference betn salaries)

