dataset = read.table('./Datasets/clouds.txt', header = TRUE)
par(mfrow=c(2,2))
seeded = dataset$seeded
unseeded = dataset$unseeded
hist(seeded)
hist(unseeded)
qqnorm(seeded)
qqnorm(unseeded)
t.test(seeded, unseeded,paired = FALSE, conf.level = 0.95, exact=FALSE)
wilcox.test(seeded, unseeded,paired = FALSE, conf.level = 0.95, exact=FALSE)
ks.test(seeded, unseeded,paired = FALSE, conf.level = 0.95, exact=FALSE)
