install.packages("Rmisc")
library(Rmisc)
arr = c(15.4, 17.9, 19.0, 0.5, 15.9, 2.7, 6.2, 2.5, 4.7, 6.9, 10.8, 24.3, 5.6, 23.0, 10.7)
# check normality
hist(arr)
qqnorm(arr)

# minimum N
standard_dev = sd(arr)
z_val = qnorm(0.97)
E=1
min_n=ceiling((z_val*standard_dev)^2)

# normal CI
CI(arr, ci=0.97)

# bootstrap CI
B=1000
tstar=numeric(B)
T1 = mean(arr)
for (i in 1:B){
  xstar = sample(arr,size=min_n, replace=TRUE)
  print(xstar)
  tstar[i] = mean(xstar)
}
quantile15 = quantile(tstar, 0.015)
quantile985 = quantile(tstar, 0.985)
s = sum(tstar<quantile15)
bCI = c(2*T1-quantile985, 2*T1-quantile15)