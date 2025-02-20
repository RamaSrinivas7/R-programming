
sink("experiment-24 output")
# Create the data frame
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 
           'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

# Print the data frame
print(exam_data)

# Extracting 3rd and 5th rows with 1st and 3rd columns
subset_data <- exam_data[c(3,5), c(1,3)]

# Print the extracted data
print(subset_data)
# Define country vector
Country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")

# Add the new column to the data frame
exam_data$country <- Country

# Print updated data frame
print(exam_data)


sink(file=NULL)
