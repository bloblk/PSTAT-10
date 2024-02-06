hist(CO2$uptake, col = "blue", border = "black",
     xlab = "Carbon Dioxide Uptake Rate",
     ylab = "Frequency", main = "Distribution of Carbon Dioxide Uptake Rate in Grass Plants")

data <- c(9, 9, 22, 32, 33, 39, 39, 42, 49, 52, 58, 70)
stem(data, scale = 2)


data("state")


rm(state.center)
rm(state.division)
rm(state.region)
rm(state.x77)

min_area = min(state.area)
max_area = max(state.area)
mean_area = mean(state.area)
median_area = median(state.area)
diff_area = max_area - min_area

print(min_area)
print(max_area)
print(mean_area)
print(median_area)
print(diff_area)

x <- c(2,3,3,3,4,2,5,10)
mode_x <- as.integer(names(which.max(table(x))))
print(mode_x)

y <- c(2,2,3,3,3,4,2,5,10)
mode_y <- as.integer(names(which.max(table(y))))
print(mode_y)
