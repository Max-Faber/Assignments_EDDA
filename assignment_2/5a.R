awards_dataset = read.table('./Datasets/awards.txt', header = TRUE)

attach(awards_dataset)

awards_dataset$prog = as.factor(awards_dataset$prog)

awards_glm = glm(num_awards~prog, family=poisson, data=awards_dataset)
summary(awards_glm)

newxdata = data.frame(prog=as.factor(1))
predict(awards_glm, newdata=newxdata, type="response", level=0.95)

newxdata2 = data.frame(prog=as.factor(2))
predict(awards_glm, newdata=newxdata2, type="response", level=0.95)

newxdata3 = data.frame(prog=as.factor(3))
predict(awards_glm, newdata=newxdata3, type="response", level=0.95)
