setwd("/Volumes/home/code/Assignments_EDDA")

# Read data and convert to data frame
dogs = read.table('./Datasets/dogs.txt', header = TRUE)
dogsframe = data.frame(yield=as.vector(as.matrix(dogs)), variety=factor(rep(1:3, each=10)))
dogsframe[1:15,]
is.factor(dogsframe$variety)
is.numeric(dogsframe$variety)

# Check for independence
dogs_lm = lm(yield~variety, data=dogsframe)
plot(fitted(dogs_lm), resid(dogs_lm))
abline(0, 0)

kruskal.test(yield~variety, data=dogsframe)
