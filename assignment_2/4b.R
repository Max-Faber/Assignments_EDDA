psi_dataset = read.table('./Datasets/psi.txt', header = TRUE)

attach(psi_dataset)
glm_psi = glm(passed~psi+gpa, data=psi_dataset, family=binomial)
newxdata = data.frame(gpa=3, psi=1)
predict(glm_psi, newdata=newxdata, type="response", level=0.95)
newxdata2 = data.frame(gpa=3, psi=0)
predict(glm_psi, newdata=newxdata2, type="response", level=0.95)
