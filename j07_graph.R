
# 파일 read
peoData <- read.csv(file.choose(), header = TRUE)
peoData
class(peoData)
str(peoData)

# plot
x <- 1 : 10
x
plot(x) 
# => x : index를 표현함

y <- x - 1
y
plot(y~x)
plot(x,y)
plot(y ~ x)
plot(x, y, main="x와 y의 값 그래프")
plot(x, y, pch=2, cex=0.5)
# pch : 기호 모양
# cex : 기호 상대크기 (디폴트값 : 1)

plot(x, y, pch="*", ces=3)

plot(peoData$name, peoData$age, pch=1, cex=0.1, main="학생의 나이(plot)")

plot(x, y, type = "l", lty=1)
# type="l" : 라인형
# lty 번호로 종류 지정

plot(x, y, type = "l", lty=2)

plot(x, y, type = "l", lty=2, lwd=12)

# lwd : 선 상대두께(디폴트1)

plot(x, y, type = "l", lty=6, lwd=3, col="red")

# dotchar : dot 그래프 (x:수치값/y:정보)
xx <- c(500, 200, 300, 400,
        900, 700, 800, 600, 500)
dotchart(xx)  # y:인덱스 x:값

yy <- c("A", "B", "C", "D", "E",
        "F", "G", "H", "I")
dotchart(xx, labels = yy)
dotchart(peoData$eng, peoData$name, pch=1, cex-1, main="각 학생의 영어 성적(dotchart"):
  
# barplot : 막대 그래프
  name <- c("둘리", "도우너", "마이콜", "희동이", "하니", "철수", "영희")
  age <- c(10, 20, 30, 40, 50, 60, 70)
  dd <- data.frame(name, age)
  
  main="각학생의 나이"
  barplot(dd$age, names.arg = barpplot)
  
# ggvis
  install.packages("ggvis")
  library(ggvis)
  
  dd %>% ggvis(~name, ~age) %>% layer_bars()
  
  dd %>% ggvis(~name, ~age) %>% layer_points()







