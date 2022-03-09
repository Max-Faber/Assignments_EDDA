fruitflies = read.table('./Datasets/fruitflies.txt', header = TRUE)
fruitflies$loglongevity = log(fruitflies$longevity)

fruitflies$thorax = NULL
fruitflies$longevity = NULL
anova(lm(fruitflies$loglongevity~fruitflies$activity))
