setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")
dataset = read.table('./Datasets/hemoglobin.txt', header = TRUE)
head(dataset)

N=length(dataset$hemoglobin)
J=length(unique(dataset$rate))
I=length(unique(dataset$method))
random_dist = rbind(rep(1:I,each=N*J),rep(1:J,N*I),sample(1:(N*I*J)))