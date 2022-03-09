dataset = read.table('./Datasets/nauseatable.txt', header = TRUE)
n_rows = length(dataset[,1])
n_cols = length(dataset[1,])
col_nausea = c()
col_med = c()
idx_col = 1

for (row in 1:n_rows) {
  for (column in 1:n_cols) {
    patient_cnt = dataset[row, column]
    nausea = FALSE
    med = rownames(dataset[1])[row]
    
    if (column == 2) nausea = TRUE
    for (instance in 1:patient_cnt) {
      col_nausea[idx_col] = nausea
      col_med[idx_col] = med
      idx_col = idx_col + 1
    }
  }
}
df = data.frame(col_nausea, col_med=as.factor(col_med))
df
chisq.test(df$col_nausea, df$col_med)

mystat = function(x, y) {
  return(chisq.test(x, y)$statistic)
}
B = 10000
tstar = numeric(B)
for (i in 1:B) {
  med_star = sample(df$col_med)
  tstar[i] = mystat(df$col_nausea, med_star)
}
myt=mystat(df$col_nausea, df$col_med)
hist(tstar)
pl = sum(tstar<myt)/B
pr = sum(tstar>myt)/B
min(pl, pr)
