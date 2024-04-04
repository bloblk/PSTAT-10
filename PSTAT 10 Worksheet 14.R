library(RSQLite)
PSTAT10db <- dbConnect(SQLite(), "my-db.sqlite")

query <- "SELECT DISTINCT NAME FROM EMPLOYEE WHERE DEPT_NO = 1"
result <- dbGetQuery(PSTAT10db, query)
print(result)

query <- "SELECT * FROM department WHERE NAME LIKE 'S%r%'"
result <- dbGetQuery(PSTAT10db, query)
print(result)

query <- "SELECT * FROM PRODUCT WHERE COLOR = 'WHITE' AND NAME LIKE '%SOCK%'"
result <- dbGetQuery(PSTAT10db, query)
print(result)

query <- "SELECT AGE FROM EMPLOYEE WHERE NAME = 'BROWN'"
result <- dbGetQuery(PSTAT10db, query)
print(result)

query <- "SELECT EMP_NO FROM EMPLOYEE WHERE NAME LIKE '%R%'"
result <- dbGetQuery(PSTAT10db, query)
print(result)

query <- "SELECT NAME, AGE, EMP_NO FROM EMPLOYEE WHERE AGE != 21"
result <- dbGetQuery(PSTAT10db, query)
print(result)
  
query <- "SELECT NAME FROM DEPARTMENT"
result <- dbGetQuery(PSTAT10db, query)
print(result)
