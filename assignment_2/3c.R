fruitflies = read.table('./Datasets/fruitflies.txt', header = TRUE)
fruitflies$loglongevity = log(fruitflies$longevity)
fruitflies$activity = as.factor(fruitflies$activity)

fruitflies_isolated = fruitflies[fruitflies$activity == "isolated",]
fruitflies_low = fruitflies[fruitflies$activity == "low",]
fruitflies_high = fruitflies[fruitflies$activity == "high",]

cor.test(fruitflies_isolated$loglongevity, fruitflies_isolated$thorax, method='pearson')
cor.test(fruitflies_low$loglongevity, fruitflies_low$thorax, method='pearson')
cor.test(fruitflies_high$loglongevity, fruitflies_high$thorax, method='pearson')
