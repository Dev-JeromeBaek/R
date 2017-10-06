
# 오라클DB 이용 - 전체 정보 불러오기(select)
install.packages("DBI")
install.packages("RJDBC")
install.packages("rJava")
 
library(DBI)
library(RJDBC)
library(rJava)

driver <- JDBC("oracle.jdbc.driver.OracleDriver", file.choose())  # ojdbc6.jar 선택
username <- "aabb"
password <- "aabb"
conn <- dbConnect(driver, "jdbc:oracle:thin:@127.0.0.1:1521:xe", username, password)

sql <- "select * from t_peo order by num desc"
dbGetQuery(conn, sql)
peoList