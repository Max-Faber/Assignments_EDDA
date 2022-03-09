airpollution = read.table('./Datasets/airpollution.txt', header = TRUE)
x = residuals(lm(airpollution$wind~airpollution$day+airpollution$temperature+airpollution$humidity+airpollution$insolation))
y = residuals(lm(airpollution$oxidant~airpollution$day+airpollution$temperature+airpollution$humidity+airpollution$insolation))
plot(x, y, main="Added variable plot for wind", xlab="residual of wind", ylab="residual of oxidant")
