arr = c(15.4, 17.9, 19.0, 0.5, 15.9, 2.7, 6.2, 2.5, 4.7, 6.9, 10.8, 24.3, 5.6, 23.0, 10.7)
power.t.test(n=length(arr), delta=14-13, sd(arr), sig.level = 0.97, alternative = 'one.sided')

