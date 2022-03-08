arr = c(15.4, 17.9, 19.0, 0.5, 15.9, 2.7, 6.2, 2.5, 4.7, 6.9, 10.8, 24.3, 5.6, 23.0, 10.7)
prob = sum(arr>15.5)/length(arr)
(sum(dnorm(arr[which(arr>15.5)], mean(arr), sd(arr))))

prop.test(sum(arr>15.5),length(arr), alternative='', conf.level=0.95)
?pnorm
arr_g_15_5 = arr[which(arr>15.5)]
CI(dnorm(arr_g_15_5,mean(arr), sd(arr)), ci=0.90)
