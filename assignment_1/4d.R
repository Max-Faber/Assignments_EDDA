setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")
dataset = read.table('./Datasets/hemoglobin.txt', header = TRUE)

#perform anova
rate_factor=as.factor(dataset$rate)
lin_mod = lm(dataset$hemoglobin~rate_factor)
anova(lin_mod)
