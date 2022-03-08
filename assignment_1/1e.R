# prop.test(x=c(3, 2), n=c(7,8), alternative='two.sided')
arr = c(15.4, 17.9, 19.0, 0.5, 15.9, 2.7, 6.2, 2.5, 4.7, 6.9, 10.8, 24.3, 5.6, 23.0, 10.7)
df = data.frame("> 15.5 minutes" = c(3, 2), "< 15.5 minutes" = c(4, 6),
                row.names=c("Men", "Women"))
fisher.test(df)
