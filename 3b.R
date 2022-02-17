setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")
dataset = read.table('./Datasets/dogs.txt', header = TRUE)
cor.test(dataset$isofluorane, dataset$halothane, method="spearman")
ks.test(dataset$isofluorane, dataset$halothane, exact=FALSE, alternative='two.sided')
