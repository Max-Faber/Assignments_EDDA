setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")

dataset = read.table('./Datasets/cream.txt', header = TRUE)
head(dataset)
par(mfrow=c(2,2))

hist(dataset$acidity)
qqnorm(dataset$acidity)
shapiro.test(dataset$acidity)

dataset$batch=as.factor(dataset$batch)
dataset$position=as.factor(dataset$position)
dataset$starter=as.factor(dataset$starter)
lin_mod = lm(dataset$acidity~dataset$batch+dataset$position+dataset$starter, data=dataset)
anova(lin_mod)
print(summary(lin_mod))
