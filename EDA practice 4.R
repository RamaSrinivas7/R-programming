
sink("lab practice EDA 3 output")
# Load necessary libraries
library(dplyr)
library(ggplot2)
library(reshape2)

# Load ChickWeight dataset
data("ChickWeight")

# (i) Order by "weight" within each "Diet" group and extract last 6 records
ordered_data <- ChickWeight %>%
  arrange(Diet, weight)

last_6_records <- tail(ordered_data, 6)
print("Last 6 records of ordered data:")
print(last_6_records)

# (ii.a) Melt data with "Chick", "Time", "Diet" as ID variables
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print("Melted dataset:")
print(head(melted_data))

# (ii.b) Cast function to display mean weight grouped by Diet
mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, mean, na.rm = TRUE)
print("Mean weight grouped by Diet:")
print(mean_weight_by_diet)

# (ii.c) Cast function to display mode of weight grouped by Diet
get_mode <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

mode_weight_by_diet <- melted_data %>%
  filter(variable == "weight") %>%
  group_by(Diet) %>%
  summarise(Mode = get_mode(value))

print("Mode of weight grouped by Diet:")
print(mode_weight_by_diet)

# 5.a Create Box Plot for "weight" grouped by "Diet"
ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Boxplot of Weight by Diet", x = "Diet", y = "Weight") +
  theme_minimal()

# 5.b Create Histogram for "weight" in Diet-1 category
ggplot(filter(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "lightgreen", color = "black") +
  labs(title = "Histogram of Weight (Diet 1)", x = "Weight", y = "Count") +
  theme_minimal()

# 5.c Create Scatter Plot for "weight" vs "Time" grouped by Diet
ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Scatter Plot of Weight vs Time by Diet", x = "Time", y = "Weight", color = "Diet") +
  theme_minimal()

sink(file=NULL)
