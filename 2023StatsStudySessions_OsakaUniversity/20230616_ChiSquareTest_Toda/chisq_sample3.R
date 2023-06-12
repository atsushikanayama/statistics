x3 <- read.csv("chap4sample3.csv", header=T)
str(x3)

x3table <- table(x3) #クロス集計表の作成
x3table

mcnemar.test(x3table, correct=T) #マクネマー検定
