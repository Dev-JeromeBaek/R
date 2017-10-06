
# 문자열 처리
s1 <- "ABC 123 가나A다 D2EF"
s2 <- c("ABC", "123", "가나A다", "D2EF")

# 타입 확인
is.character(s1)
is.character(s2)

# 정보 갯수
length(s1)
length(s2)

# 문자열 길이
nchar(s1)
nchar(s2)

# 목적 문자열이 존재하는 데이터 확인
grep("A", s1, value=TRUE) # A를 포함하는 문자열 출력
grep("2", s2) # 2를 포함하는 원소의 인덱스 출력
grep("2", s2, value=TRUE) # 2를 포함하는 문자열 출력

# 목적 문자열의 갯수 확인
# - 지원 라이브러리 사용하기
#   install.packages("원하는라이브러리이름")
#   이미 설치 완료 된 경우, 재실행 시 시간 소요
install.packages("stringr")
library(stringr)

str_count(s1, "A")  # A 문자열의 갯수 카운팅
str_count(s2, "2")  # 2 문자열의 갯수 카운팅
s2

# 문자열 분리
sp <- strsplit(s1, " ")
sp
class(sp) # list로 제공됨
sp[[1]][2]

# 문자열 결합
s3 <- "가나다"
s4 <- "456"
s5 <- paste(s3, s4) # 자동 띄어쓰기가 적용됨
s6 <- paste(s3, s4, sep = "/")
s6

# 문자열 형변환 (숫자 -> 문자열)
n <- 5
class(n)
n2 <- as.character(n)
n
n2
class(n2)








