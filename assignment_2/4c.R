psi_dataset = read.table('./Datasets/psi.txt', header = TRUE)

attach(psi_dataset)
glm_psi = glm(passed~psi+gpa, data=psi_dataset, family=binomial)

summary(glm_psi)
odds_psi = exp(-11.602 + (2.338 * 1))
odds_no_psi = exp(-11.602)
odds_psi_ratio = odds_psi / odds_no_psi
odds_psi_ratio
# This is the same as:
exp(2.338)
