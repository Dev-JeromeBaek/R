# if
age <- 19

if(age >= 8 && age <= 13) {
  print("초등학교")
} else if(age >= 14 && age <= 16) {
  print("중학교")
} else if(age >= 17 && age <= 19) {
  print("고등학교")
} else {
  print("대학 또는 직장")
}


# 반복문 for
num <- 10

for( i in 4 : num) {
  print(i)
}

# 함수
a <- function(name, age) {
  
  if(age <= 19) {
    ss <- paste(name, "는 청소년", sep="")
  } else {
    ss <- paste(name, "는 어른",sep="")
  }
  ss
}

a("둘리", 10)
