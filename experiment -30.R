sink("experiment 30 output")
# Load necessary library
if (!require(ggplot2)) install.packages("ggplot2", dependencies=TRUE)
library(ggplot2)

# Load dataset
data(ChickWeight)

# (a) Box plot for "weight" grouped by "Diet"
ggplot(ChickWeight, aes(x = as.factor(Diet), y = weight, fill = as.factor(Diet))) +
  geom_boxplot() +
  labs(title="Boxplot of Weight by Diet", x="Diet", y="Weight") +
  theme_minimal()

# (b) Histogram for "weight" feature of Diet 1 category
ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill="skyblue", color="black", alpha=0.7) +
  labs(title="Histogram of Weight for Diet 1", x="Weight", y="Frequency") +
  theme_minimal()

# (c) Scatter plot for "weight" vs "Time" grouped by Diet
ggplot(ChickWeight, aes(x = Time, y = weight, color = as.factor(Diet))) +
  geom_point(alpha=0.7) +
  labs(title="Scatter Plot of Weight vs Time by Diet", x="Time", y="Weight", color="Diet") +
  theme_minimal()

sink(file=NULL)