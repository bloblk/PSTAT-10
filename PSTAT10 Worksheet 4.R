m <- matrix(1:12, nrow = 4, ncol = 3, byrow = TRUE)
print(m)
rownames(m) <- c("a", "b", "c", "d")
colnames(m) <- c("x", "y", "z")
print(m)
print(m[,1])
print(m["c", "x"])

a <- c(1,2,3)
b <- c(6,7,8)
ab <- array(c(a, b), dim = c(3, 2))
colnames(ab) <- c("a", "b")
print (ab)
is.matrix(ab)

my_matrix <- matrix(NA, nrow = 2, ncol = 3)
print(my_matrix)

V1 <- c(1, 3, 4, 5)
V2 <- c(10, 11, 12, 13, 14, 15)

my_array <- array(c(V1, V2), dim = c(3, 3, 2))
print(my_array)

p <- c(10, 20, 30, 20, 20, 25, 29, 26)
q <- c(10, 50, 30, 20, 20, 35, 19, 56)
s <- c(10, 40, 30, 20, 20, 25, 49, 26)

common_elements <- intersect(p, intersect(q, s))
print(common_elements)
