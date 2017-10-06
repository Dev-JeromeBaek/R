
#data frame
name <- c("둘리", "도우너", "하니", "마이콜")
gender <- c("f", "m", "f","m")
hobby <- c("놀기", "먹기", "자기", "싸우기")
people <- data.frame(name, gender, hobby)
people
class(people)
str(people)
# => factor : 데이터의 성질을 나타내는 범주형 자료
#     (정량적 : 1, 2, 3 / 정성적 : 성별, 지명 등)

# 열, 행 이름 보기
colnames(people)
rownames(people)

# 열 정보 추가 : cbind()
people <- cbind(people, age=c(10, 20, 30, 40))
people

# 행 정보 추가 : factor 타입을 처리한 후 rbind()
str(people)

# 에러 : people <- rbind(people, list("또치", "m", "걷기", 50))
str(people)
levels(people$name) <- c(levels(people$name), "또치")
levels(people$gender) <- c(levels(people$gender), "m")
levels(people$hobby) <- c(levels(people$hobby), "걷기")
people <- rbind(peoplem, list("또치", "m", "걷기", 50))
people

# 이름 정보
people$name
people[1]   # [열]
people[,1]  # [행, 열]

# 원하는 행 보기
people[1,]

# 복수의 열 정보 보기(모든 행)
people[c("name", "gender")]

# 정보 변경 (둘리의 성별을 m으로 변경)
people[1,2] <- "m"
people

#tidyr 패키지 / 라이브러리 이용
install.packages("tidyr")
library(tidyr)
library(dplyr)

filter(people, gender=="m")
people[5, 2] <- "f" # 또치 여자 만들기
people
rm(people)

# 원하는 열 정보 모음 보기
select(people, name, hobby)











