setwd("/Volumes/SEAGATE/code/Assignments_EDDA")

# Extra check for normality
shapiro.test(dogs$isofluorane)
shapiro.test(dogs$halothane)
shapiro.test(dogs$cyclopropane)

# Read data and convert to data frame
dogs = read.table('./Datasets/dogs.txt', header = TRUE)
dogsframe = data.frame(yield=as.vector(as.matrix(dogs)), variety=factor(rep(1:3, each=10)))
dogsframe[1:15,]
is.factor(dogsframe$variety)
is.numeric(dogsframe$variety)

# Perform one-way Anova test
dogs_anov = lm(yield~variety, data=dogsframe)
anova(dogs_anov)

# Get the critical F-value for the given calculated degrees of freedom
df1 = length(dogs) - 1
df2 = length(dogs$isofluorane) + length(dogs$halothane) + length(dogs$cyclopropane) - length(dogs)
qf(p=0.95, df1=df1, df2=df2)
