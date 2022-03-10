fruitflies = read.table('./Datasets/fruitflies.txt', header = TRUE)
fruitflies$activity = as.factor(fruitflies$activity)

fruitflies_lm = lm(fruitflies$longevity~fruitflies$activity*fruitflies$thorax)
anova(fruitflies_lm)

fruitflies_lm_add = lm(fruitflies$longevity~fruitflies$activity+fruitflies$thorax)
drop1(fruitflies_lm_add, test='F')
