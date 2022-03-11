psi_dataset = read.table('./Datasets/psi.txt', header = TRUE)

attach(psi_dataset)
psi_and_passed = length(which(psi_dataset$psi == 1 & psi_dataset$passed == 1))
psi_and_not_passed = length(which(psi_dataset$psi == 1 & psi_dataset$passed == 0))
no_psi_and_passed = length(which(psi_dataset$psi == 0 & psi_dataset$passed == 1))
no_psi_and_not_passed = length(which(psi_dataset$psi == 0 & psi_dataset$passed == 0))

df = data.frame("psi" = c(psi_and_passed, psi_and_not_passed), "no_psi" = c(no_psi_and_passed, no_psi_and_not_passed),
                row.names=c("passed", "not_passed"))
df

fisher.test(df)
