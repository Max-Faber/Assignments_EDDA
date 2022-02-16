arr = c(15.4, 17.9, 19.0, 0.5, 15.9, 2.7, 6.2, 2.5, 4.7, 6.9, 10.8, 24.3, 5.6, 23.0, 10.7)
t.test(arr, mu=15, alternative = "less", conf.level = 0.97)
binom.test(sum(arr<15), length(arr), alternative = "l", p=0.5)
wilcox.test(arr, mu=15, alternative="l", conf.level=0.97)