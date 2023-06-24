x2 <- read.csv("chap4sample2.csv", header=T) #データの読み込み
str(x2)

x2table <- table(x2$gender, x2$answer) #クロス集計表の作成
x2table

chisq.test(x2table) #カイ二乗検定

x2matrix <- matrix(c(14,6,5,15), ncol=2, byrow=T) #クロス集計表を直接入力
rownames(x2matrix) <- c("F","M") #行ラベル
colnames(x2matrix) <- c("Agree", "Disagree") #列ラベル
x2matrix
chisq.test(x2matrix) #カイ二乗検定

fisher.test(x2table) #フィッシャーの直接確率
