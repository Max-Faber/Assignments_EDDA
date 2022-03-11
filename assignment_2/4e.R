psi_dataset = read.table('./Datasets/psi.txt', header = TRUE)

attach(psi_dataset)
psi_lm = lm(passed~psi*gpa)
anova(psi_lm)
