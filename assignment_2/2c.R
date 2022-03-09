airpollution = read.table('./Datasets/airpollution.txt', header = TRUE)

# Step-up
summary(lm(airpollution$oxidant~airpollution$day))
summary(lm(airpollution$oxidant~airpollution$wind))
summary(lm(airpollution$oxidant~airpollution$temperature))
summary(lm(airpollution$oxidant~airpollution$humidity))
summary(lm(airpollution$oxidant~airpollution$insolation))
# wind: 8.20e-07
summary(lm(airpollution$oxidant~airpollution$wind+airpollution$day))
summary(lm(airpollution$oxidant~airpollution$wind+airpollution$temperature))
summary(lm(airpollution$oxidant~airpollution$wind+airpollution$humidity))
summary(lm(airpollution$oxidant~airpollution$wind+airpollution$insolation))
# temperature: 5.05e-05
summary(lm(airpollution$oxidant~airpollution$temperature+airpollution$wind+airpollution$day))
summary(lm(airpollution$oxidant~airpollution$temperature+airpollution$wind+airpollution$humidity))
summary(lm(airpollution$oxidant~airpollution$temperature+airpollution$wind+airpollution$insolation))
# oxidant = -5.20334 - (0.42706 * wind) + (0.52035 * temperature) + error, with R-squared = 0.7773

# Step-down
summary(lm(airpollution$oxidant~airpollution$day+airpollution$wind+airpollution$temperature+airpollution$humidity+airpollution$insolation))
# day: 0.83227
summary(lm(airpollution$oxidant~airpollution$wind+airpollution$temperature+airpollution$humidity+airpollution$insolation))
# insolation: 0.65728
summary(lm(airpollution$oxidant~airpollution$wind+airpollution$temperature+airpollution$humidity))
# humidity: 0.131
summary(lm(airpollution$oxidant~airpollution$wind+airpollution$temperature))
# oxidant = -5.20334 - (0.42706 * wind) + (0.52035 * temperature) + error, with R-squared = 0.7773
