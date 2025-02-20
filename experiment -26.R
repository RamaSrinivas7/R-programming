
sink("experiment-26 output")
# Load necessary library
library(dplyr)

# Load the built-in airquality dataset
data("airquality")

# Check if it's a data frame
is_dataframe <- is.data.frame(airquality)
cat("Is airquality a data frame? ", is_dataframe, "\n")

# Order the data frame by the first (Ozone) and second (Solar.R) column
airquality_ordered <- airquality %>% arrange(Ozone, Solar.R)

print("Ordered airquality dataset:")
print(head(airquality_ordered))

# Remove the variables 'Solar.R' and 'Wind'
airquality_cleaned <- airquality_ordered %>% select(-Solar.R, -Wind)

print("Data frame after removing 'Solar.R' and 'Wind':")
print(head(airquality_cleaned))

sink(file=NULL)
