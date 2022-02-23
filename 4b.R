setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")
dataset = read.table('./Datasets/hemoglobin.txt', header = TRUE)
head(dataset)

#perform anova
lin_mod = lm(dataset$hemoglobin~rate_factor+method_factor)

#check dependence
plot(fitted(lin_mod), resid(lin_mod))
abline(0, 0)

rate_factor = as.factor(dataset$rate)
method_factor = as.factor(dataset$method)
anova(lin_mod)

# check the interaction graphs
interaction.plot(dataset$rate, dataset$method, dataset$hemoglobin)
interaction.plot(dataset$method, dataset$rate, dataset$hemoglobin)

