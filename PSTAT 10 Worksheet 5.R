x <- c(3,7,7,8,9,10,1)
indexpositions <- which(x > 7)
print(indexpositions)

old <- "PSTAT 10, PSTAT 5LS, PSTAT 120B"
new <- sub("B", "A", old)
print(new)

months <- month.name
monthsname<- months[c(6,7,8)]
capital_month_names <- toupper(monthsname)
print(capital_month_names)

letters <- c("B", "B", "D", "E")
letters_factor <- factor(letters)
levels(letters_factor)[1] <- "A"
print(letters_factor)

both = c("dog",3,"cat","mouse",7,12,9,"chicken")
my_list <- list("dog",3,"cat","mouse",7,12,9,"chicken")
is.list(my_list)
print(both_list)
