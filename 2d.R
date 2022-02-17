setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")
dataset = read.table('./Datasets/clouds.txt', header = TRUE)
signTest(dataset$seeded, mu=300, alternative='l', conf.level=0.95)

prop.test(x=c(length(dataset$seeded[which(dataset$seeded < 30)])), 
          n=c(length(dataset$seeded)),p=c(0.25), alternative='less', conf.level = 0.95)
