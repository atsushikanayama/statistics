x1 <- read.csv("chap4sample1.csv", header=T) #データの読み込み
str(x1)#データ型の確認

x1$Answer <- factor(x1$Answer, labels=c('No','Yes')) #名義尺度に変更

x1table <- table(x1) #表の形にする
x1table
chisq.test(x1table) #カイ二乗検定

x1c <- c(5,15) #データを直接入力する場合
chisq.test(x1c) #カイ二乗検定

pie(x1table) #円グラフの作図
