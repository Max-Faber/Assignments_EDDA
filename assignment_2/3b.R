fruitflies = read.table('./Datasets/fruitflies.txt', header = TRUE)
fruitflies$loglongevity = log(fruitflies$longevity)

fruitflies$activity = as.factor(fruitflies$activity)
plot(fruitflies$loglongevity~fruitflies$thorax, pch=as.character(fruitflies$activity))
qqnorm(fruitflies$thorax)
hist(fruitflies$thorax)

fruitflies_lm = lm(fruitflies$loglongevity~fruitflies$activity+fruitflies$thorax)
par(mfrow=c(1,2))
qqnorm(residuals(fruitflies_lm))
plot(fitted(fruitflies_lm), residuals(fruitflies_lm))

par(mfrow=c(1,1))
plot(fruitflies$loglongevity~fruitflies$thorax, pch=unclass(fruitflies$activity))
activities = c("low", "high", "isolated")

for (i in 1:length(activities)) abline(lm(loglongevity~thorax, data=fruitflies[fruitflies$activity == activities[i],]))

fruitflies_lm2 = lm(fruitflies$loglongevity~fruitflies$activity*fruitflies$thorax)
anova(fruitflies_lm2)

fruitflies_lm2_add = lm(fruitflies$loglongevity~fruitflies$activity+fruitflies$thorax)
drop1(fruitflies_lm2_add, test='F')

fruitflies_isolated = fruitflies[fruitflies$activity == "isolated",]
fruitflies_low = fruitflies[fruitflies$activity == "low",]
fruitflies_high = fruitflies[fruitflies$activity == "high",]

# Estimated longevities min
fruitflies_isolated_min = fruitflies_isolated[fruitflies_isolated$thorax == min(fruitflies_isolated$thorax),]
fruitflies_lm_min_isolated = lm(loglongevity~thorax, data=fruitflies_isolated_min)
confint(fruitflies_lm_min_isolated)

fruitflies_low_min = fruitflies_low[fruitflies_low$thorax == min(fruitflies_low$thorax),]
fruitflies_lm_min_low = lm(loglongevity~thorax, data=fruitflies_low_min)
confint(fruitflies_lm_min_low)

fruitflies_high_min = fruitflies_high[fruitflies_high$thorax == min(fruitflies_high$thorax),]
fruitflies_lm_min_high = lm(loglongevity~thorax, data=fruitflies_high_min)
confint(fruitflies_lm_min_high)

# Estimated longevities max
fruitflies_isolated_max = fruitflies_isolated[fruitflies_isolated$thorax == max(fruitflies_isolated$thorax),]
fruitflies_lm_max_isolated = lm(loglongevity~thorax, data=fruitflies_isolated_max)
confint(fruitflies_lm_max_isolated)

fruitflies_low_max = fruitflies_low[fruitflies_low$thorax == max(fruitflies_low$thorax),]
fruitflies_lm_max_low = lm(loglongevity~thorax, data=fruitflies_low_max)
confint(fruitflies_lm_max_low)

fruitflies_high_max = fruitflies_high[fruitflies_high$thorax == max(fruitflies_high$thorax),]
fruitflies_lm_max_high = lm(loglongevity~thorax, data=fruitflies_high_max)
confint(fruitflies_lm_max_high)
