#初始設定
alle_count <- 20  #等位基因數量
alle_strenth <-4  #等位機音的強度1~4


#生成一個等位基音強度隨機的親本
v <- NULL
for (i in 1:alle_count){
v <- c(v,sample(alle_strenth,1))}


#生成一個等位基音強度至少是2的隨機親本
v2 <- NULL
for (i in 1:alle_count){
  v2 <- c(v2,sample(c(2:alle_strenth),1))}


#生成一個等位基音強度1的親本
v <- NULL
for (i in 1:alle_count){
  v <- c(v,1)}

#生成一個等位基音強度4親本
v2 <- NULL
for (i in 1:alle_count){
  v2 <- c(v2,4)}

sum(v)
sum(v2)


#生成儲存用的DF
f1data <- data.frame(strenth = c(sum(v),sum(v2)))
for (i in 1:2000) {
  f1 <-NULL
  for (i in 1:alle_count){
    if(sample(2,1) == 1){
      f1 <- c(f1,v[i])
    }else{
      f1 <- c(f1,v2[i])
    }
  }
  sum(f1)
  f1data[nrow(f1data)+1,] <-sum(f1)
}




hist(x=f1data$strenth, 
     main="兩親本雜交後後代的強度分佈",         # 圖片的名稱
     xlab="強度",                      # X軸的名稱
     ylab="頻率")                  # Y軸的名稱