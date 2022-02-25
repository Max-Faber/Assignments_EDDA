setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")
dataset = read.table('./Datasets/hemoglobin.txt', header = TRUE)
rate_factor = as.factor(dataset$rate)
method_factor = as.factor(dataset$method)
lin_mod = lm(dataset$hemoglobin~rate_factor+method_factor)

data=c()
i=0
for (x in 1:length(dataset$hemoglobin)){
  if (dataset$method[x] == 'A' && dataset$rate[x]==3){
    i=i+1
    data[i] = dataset$hemoglobin[x]
  }
}
data
library(Rmisc)
CI(data, ci=0.95)
