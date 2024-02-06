data(painters, package = "MASS")
school_c_mean <- tapply(painters$Composition, painters$School, mean)[["C"]]
print(school_c_mean)

highest_school <- names(which.max(tapply(painters$Composition, painters$School, mean)))
print(highest_school)

filtered_painters <- painters[painters$color >= 14, ]
num_filtered_painters <- nrow(filtered_painters)
total_painters <- nrow(painters)
color_percentage <- (num_filtered_painters / total_painters) * 100
print(color_percentage)

pie_chart <- ggplot(painters, aes(x = 1, fill = School)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  theme_minimal() +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank()) +
  labs(title = "Painter Schools")
print(pie_chart)

?painters
mean_composition_score <- tapply(painters$composition, painters$school, mean)
print(mean_composition_score)

school_counts <- table(painters$school)
barplot(school_counts, xlab="School", ylab="Number of Painters", main="Painter Schools")
axis(side=1, at=1:3, labels=names(school_counts))
axis(side=2, at=seq(0, max(school_counts), by=10))

