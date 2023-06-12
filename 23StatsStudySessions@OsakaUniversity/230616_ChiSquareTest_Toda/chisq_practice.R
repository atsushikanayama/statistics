dat <- read.csv("chap4practice.csv", header=T)
str(dat)

table <- table(dat$gender, dat$choice)
table

chisq.test(table)
