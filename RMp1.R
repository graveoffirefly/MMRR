# Q1
# 1. Assign the data in R
data1 <- c(10.4, 5.6, 3.1, 6.4, 21.7)

# 2. Create a sequence from 1 to 100
data2 <- 1:100

# 3. Create a sequence from 0 to 500 with a step of 5
data3 <- seq(0, 500, by = 5)

# 4. Round off the number to 4 decimal places
rounded_number <- round(3.14159265359, digits = 4)

# Q2
# Mode for raw data
mode <- function(x) {
  uniqx <- unique(x)
  uniqx[which.max(tabulate(match(x, uniqx)))]
}

data_q2_i <- c(2, 7, 3, 5, 6, 1, 1)
mode_q2_i <- mode(data_q2_i)
mode_q2_i
data_q2_ii <- c(25, 29, 32, 35, 18, 19, 21, 12, 19, 87, 86)
mode_q2_ii <- mode(data_q2_ii)
mode_q2_ii
# Q3
data_q3 <- c(10, 10, 10, 10, 10, 560, 640, 520, 320, 90, 20, 10)
mean_q3 <- mean(data_q3)
median_q3 <- median(data_q3)

# Q4 (operations on attendance data)
attendance <- c(80, 95, 75, 85, 90)  

mean(attendance)
median(attendance)
mode(attendance)
sd(attendance)
var(attendance)
percentile_75_attendance <- quantile(attendance, 0.75)
percentile_75_attendance
