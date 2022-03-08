install.packages('lme4')
setwd("S:/Shared/Documents/Study/VU/MSc Year 1/Experimental Design and Data Analysis/Assignments/Assignment 1")

dataset = read.table('./Datasets/cream.txt', header = TRUE)
head(dataset)
dataset$batch=as.factor(dataset$batch)
dataset$starter=as.factor(dataset$starter)
#shuffle the block variable
N=1
B=length(unique(dataset$batch))
I=length(unique(dataset$starter))
for (row_i in 1:B){
  s = sample(1:(N*I))
  for (col_i in 1:length(s)){
    x = s[col_i]
    dataset$batch[row_i*col_i] = x
  }
}
# compute the significance of starter
full_model=lme4::lmer(dataset$acidity~starter+(1|dataset$batch)+(1|dataset$batch:dataset$starter),data=dataset, REML=FALSE)
part_model=lme4::lmer(dataset$acidity~(1|dataset$batch)+(1|dataset$batch:dataset$starter),data=dataset, REML=FALSE)
anova(full_model, part_model)
