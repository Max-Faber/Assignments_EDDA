setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")

dataset = read.table('./Datasets/cream.txt', header = TRUE)
head(dataset)
dataset$batch=as.factor(dataset$batch)
dataset$starter=as.factor(dataset$starter)
