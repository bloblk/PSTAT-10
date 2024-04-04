cubes <- numeric(7)
for (i in 1:7) {
  cubes[i] <- i^3
  print(cubes[i])
}

count <- 1
repeat {
  if (count > 5) {
    break
  }
  print("PSTAT 10")
  count <- count + 1
}

cube <- function(x) {
  return(x^3)
}
cube(3)
setwd("~/Downloads")
unzip("tinyclothes.zip")
library(DBI)
library(RSQLite)
library(sqldf)

setwd("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10")

txt_files <- list.files(pattern = ".txt")
for (file in txt_files) {
  data <- read.table(file, header = TRUE)
  assign(file, data)
}

install.packages("DBI")
install.packages("sqldf")
install.packages("RSQLite")

library(DBI)
library(RSQLite)
library(sqldf)

PSTAT10db <- dbConnect(RSQLite::SQLite(), "my-db.sqlite")

