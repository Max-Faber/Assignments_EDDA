install.packages('EnvStats')
library(EnvStats)

setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")
dataset = read.table('./Datasets/clouds.txt', header = TRUE)
x = eexp(dataset$seeded, method = "mle/mme", ci = TRUE, ci.type = "two-sided", 
     ci.method = "exact", conf.level = 0.95)
estimator = x$parameters
x$interval$limits


B=1000
tstar=numeric(B)
for (i in 1:B){
  xstar = sample(dataset$seeded, replace=TRUE)
  tstar[i] = median(xstar)
}
gen_exp = rexp(B, rate=estimator)
t.test(tstar, gen_exp,mu=0, alternative="two.sided", conf.level=0.95)
ks.test(tstar, "pexp", estimator)
