awards_dataset = read.table('./Datasets/awards.txt', header = TRUE)
attach(awards_dataset)

awards_dataset$prog = as.factor(awards_dataset$prog)

kruskal.test(num_awards, prog)
