sink("experiment 31 output")
# Load required library
if (!require(ggplot2)) install.packages("ggplot2", dependencies=TRUE)
library(ggplot2)

# Convert Titanic dataset to DataFrame
titanic_df <- as.data.frame(Titanic)

# (a) Bar Chart: Survival by Class
ggplot(titanic_df, aes(x = Class, y = Freq, fill = Survived)) +
  geom_bar(stat = "identity", position = "dodge") + theme_minimal()

# (b) Bar Chart: Survival by Class & Gender
ggplot(titanic_df, aes(x = Class, y = Freq, fill = Survived)) +
  geom_bar(stat = "identity", position = "dodge") + facet_wrap(~ Sex) + theme_minimal()

# (c) Histogram for "Age" (If dataset has Age column)
# Uncomment and use an alternative Titanic dataset with Age
# ggplot(titanic_data_with_age, aes(x = Age)) +
#   geom_histogram(binwidth = 5, fill="skyblue", color="black", alpha=0.7) + theme_minimal()

sink(file=NULL)
