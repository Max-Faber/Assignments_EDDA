psi_dataset = read.table('./Datasets/psi.txt', header = TRUE)

attach(psi_dataset)
glm_psi = glm(passed~psi+gpa, data=psi_dataset, family=binomial)
drop1(glm_psi, test="Chisq")
