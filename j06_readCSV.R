
# 파일 읽기
# 1. 경로 지정 방식 : read.table(file="경로")
# 2. 직접 지정 방식 : read.table(file,choose())

# read.table(file.choose())

# csv 파일 읽어와서 객체에 저장하기
#   (header=TRUE : 첫번째 줄은 쳉먹ㅇ;ㄹ 먕ㅅ)
airData <- read.csv(file.choose(), header = TRUE)
airData

class(airData)
str(airData)

# 부분 보기 - 처음, 끝
head(airData)
tail(airData)

# 출발 지연 최대값 찾기
airData
airData$DepDelay
airData$DepDelay != "NA"  # 결과 : TRUE/NA(FALSE)
airData$DepDelay[which(airData$DepDelay != "NA")]
airData$DepDelay[which(airData$DepDelay != "NA" & airData$DepDelay > 0)]
max(airData$DepDelay[which(airData$DepDelay != "NA")])

# 중복되는 값을 제외한 종류 보기
airData$Year
unique(airData$Year)
year <- unique(airData$Year)
year

# 2004년도 년도 정보 찾기
which(airData$Year == "2004")
which(airData$Year == 2004)
which(airData$Year == year[1])

airData$Year[which(airData$Year == year[1])]

# 2004년도 DepDelay 찾기 및 총 합
dep2004 <- airData$DepDelay[which(airData$Year == year[1])]
dep2004DF <- data.frame(dep2004)
dep2004DF

total2004 <- sum(dep2004DF$dep2004[which(dep2004DF$dep2004 != "NA")])
total2004

# 문제 : 2004년도의 출발 지연 총 횟수를 카운팅
#         (TRUE 값은 합 계산 시 1로 계산됨)
airData$DepDelay != "NA"

aaa <- airData$DepDelay != "NA"
aaa
year[1]
which(aaa == "TRUE" & year[1])
bb <- sum(which(aaa == "TRUE" & year[1]))

bb

# 각 연도별 DepDelay의 합
length(year)
ss <- data.frame(year)
vtotal <- c()
vtotal
class(vtotal)

for(i in 1 : length(year)) {
  depData <- airData$DepDelay[which(airData$Year == year[i])]
  depDataDF <- data.frame(depData)
  total <- sum(depDataDF$depData[which(depDataDF$depData != "NA")])
  
  vtotal <- c(vtotal, total)
}
vtotal

ss <- cbind(ss, totalDepDelay=vtotal)
ss




