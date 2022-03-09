airpollution = read.table('./Datasets/airpollution.txt', header = TRUE)
round(cor(airpollution), 2)
pairs(airpollution)
