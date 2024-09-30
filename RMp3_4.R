x =c(7, 15, 23, 12, 44, 56, 32)
barplot(x)

x <- c("Punjab", "Haryana", "Uttar Pradesh", "Gujarat", "Bihar", "Karnataka")
y <- c(728, 943, 1469, 2903, 2153, 2276)
barplot(y, names.arg = x, main = "Population (in thousands) of States")

barplot(y, names.arg = x, col = "red", border = "blue", main = "Yield of rice in kg. per acre in various states of India", xlab = "States", ylab = "Yield")

C=c("A", "B", "C", "D")
clgA= c(1200, 600, 500)
clgB = c(1000, 800, 650)
clgC = c(1400, 700, 850)
clgD = c(750, 900, 300)
d = data.frame(clgA, clgB, clgC, clgD)
d1 = as.matrix(d)
barplot(d1, beside = T, names.arg = C, col = 1:2:3, legend = c("Arts","Science", "Commerce"),xlab = "College", ylab = "No. of Students")


Yr = c("2014-15", "15-16", "16-17")
A = c(600, 550, 500)
S = c(400, 500, 600)
C = c(200, 250, 300)

T = data.frame(A, S, C)
M = as.matrix(T)

# Barplot with bars beside each other
barplot(M, beside = TRUE, names.arg = Yr)

# Barplot with stacked bars
barplot(M, beside = FALSE, names.arg = Yr)


colors = c("green", "orange", "brown")
months <- c("Mar", "Apr", "May", "Jun", "Jul")
regions <- c("East", "West", "North")

Values =- matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11),nrow = 3, ncol = 5, byrow = TRUE)

barplot(Values, main = "Total Revenue", names.arg = months, xlab = "Month", ylab = "Revenue", col = colors)

legend("topleft", regions, cex = 0.7, fill = colors)

# Data
sports <- c("Football", "Hockey", "Cricket", "Basketball", "Badminton")
counts <- c(10, 5, 5, 10, 10)

# Pie chart
pie(counts, labels = sports, main = "Pie Chart of Sports Data", col = rainbow(length(sports)))

# Data
expenditure <- c("Rent", "Food", "Clothing", "Savings")
amount <- c(4000, 5400, 2800, 400)

# Pie chart
pie(amount, labels = expenditure, main = "Expenditure Breakdown", col = rainbow(length(expenditure)))

lb= seq(0,100,25);     
ub=seq(25,125,25);   
x=(lb+ub)/2

f =c(5,8,13,11,3)
y = rep(x,f)
t= seq(0,125,25)
hist(y, breaks=t)

# Data
class_intervals <- c(0, 10, 20, 30, 40, 50, 60, 70)
frequencies <- c(5, 15, 20, 23, 17, 11, 9)

midpoints <- (class_intervals[-length(class_intervals)] + class_intervals[-1]) / 2
plot(midpoints, frequencies, type = "l", xlab = "Class Interval", ylab = "Frequency", main = "Frequency Polygon")
points(midpoints, frequencies)


# Data
class_intervals <- c(0, 10, 20, 30, 40, 50, 60, 70, 80)
frequencies <- c(4, 7, 10, 12, 9, 5, 4, 3)

# Calculate cumulative frequencies
cumulative_frequencies <- cumsum(frequencies)

plot(class_intervals, c(0, cumulative_frequencies), type = "s", xlab = "Score", ylab = "Cumulative Frequency", main = "Ogive", col = "blue", lwd = 2)
points(class_intervals, c(0, cumulative_frequencies), col = "blue", pch = 16)
grid()


















