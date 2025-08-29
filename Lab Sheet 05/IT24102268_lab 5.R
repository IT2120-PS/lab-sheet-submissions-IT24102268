#1
setwd("D:\\Sliit\\y2s1\\Ps\\lab\\LAB 5")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
head(Delivery_Times)
Delivery_Times$Delivery_Time <- as.numeric(as.character(Delivery_Times$Delivery_Time))

#2
histogram <- hist(Delivery_Time, 
                  main = "Histogram of Delivery Times", 
                  xlab = "Delivery Time (minutes)",
                  breaks = seq(20, 70, length = 10), 
                  right = FALSE,
                  col = "lightblue")

#3
# The distribution appears to be approximately symmetric with a slight right skew.
# Most delivery times are clustered between 35-55 minutes.

#4
breaks <- round(histogram$breaks)
freq <- histogram$counts
cum_freq <- cumsum(freq)
new <- c(0, cum_freq)
plot(breaks, new, 
     type = "l", 
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency",
     ylim = c(0, max(new)),
     col = "blue", 
     lwd = 2)
points(breaks, new, pch = 16, col = "blue")
grid()