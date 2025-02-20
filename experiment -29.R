
sink("experiment-29 output")
# Load necessary libraries
library(dplyr)
library(tidyr)

# Load the built-in Iris dataset
data("iris")

# Step 1: Basic Information
print("Dimension of the dataset:")
print(dim(iris))

print("Structure of the dataset:")
print(str(iris))

print("Summary statistics of the dataset:")
print(summary(iris))

print("Standard deviation of numerical features:")
print(sapply(iris[,1:4], sd))

# Step 2: Mean and Standard Deviation grouped by Species
stats_by_species <- iris %>%
  group_by(Species) %>%
  summarise(across(where(is.numeric), list(mean = mean, sd = sd), .names = "{.col}_{.fn}"))

print("Mean and Standard Deviation grouped by Species:")
print(stats_by_species)

# Step 3: Quantile Values of Sepal.Width and Sepal.Length
print("Quantile values of Sepal.Width:")
print(quantile(iris$Sepal.Width))

print("Quantile values of Sepal.Length:")
print(quantile(iris$Sepal.Length))

# Step 4: Create a New Data Frame with Sepal.Length Categorized by Quantile
iris1 <- iris %>%
  mutate(Sepal.Length.Cate = cut(Sepal.Length, 
                                 breaks = quantile(Sepal.Length, probs = seq(0, 1, 0.25), na.rm = TRUE),
                                 include.lowest = TRUE, labels = c("Short", "Medium", "Long", "Very Long")))

print("First few rows of new dataset 'iris1' with Sepal.Length.Cate:")
print(head(iris1))

# Step 5: Average Value of Numerical Variables by Species and Sepal.Length.Cate
avg_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(where(is.numeric), mean, na.rm = TRUE), .groups = "drop")

print("Average value of numerical variables by Species and Sepal.Length.Cate:")
print(avg_values)

# Step 6: Average Mean Value of Numerical Variables by Species and Sepal.Length.Cate
mean_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(where(is.numeric), mean, .names = "mean_{.col}"))

print("Average mean value of numerical variables by Species and Sepal.Length.Cate:")
print(mean_values)

# Step 7: Create Pivot Table Based on Species and Sepal.Length.Cate
pivot_table <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(Count = n(), .groups = "drop") %>%
  pivot_wider(names_from = Sepal.Length.Cate, values_from = Count, values_fill = 0)

print("Pivot Table based on Species and Sepal.Length.Cate:")
print(pivot_table)

sink(file=NULL)
