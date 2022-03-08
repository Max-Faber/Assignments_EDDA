dataset = read.table('./Datasets/nauseatable.txt', header = TRUE)
dataset[,1]
naus_chisq = chisq.test(dataset)
naus_chisq
naus_chisq$expected
