airpollution = read.table('./Datasets/airpollution.txt', header = TRUE)

newxdata = data.frame(wind=33, temperature=54)
model = lm(oxidant~wind+temperature, data=airpollution)
predict(model, newdata=newxdata, interval="confidence", level=0.95)
