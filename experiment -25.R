
sink("experiment-25 output")
# Load necessary library
library(dplyr)

# Step 1: Create the Initial Data Frame
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 
           'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

print("Initial Data Frame:")
print(exam_data)

# Task (c): Add New Row(s) to the Existing Data Frame
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)

# Append new rows
exam_data <- rbind(exam_data, new_exam_data)

print("Updated Data Frame with New Rows:")
print(exam_data)

# Task (d): Sort the Data Frame by Name and Score
exam_data <- exam_data %>% arrange(name, score)

print("Sorted Data Frame by Name and Score:")
print(exam_data)

# Task (e): Save the Data Frame to a File and Display Its Information
write.csv(exam_data, file = "exam_data.csv", row.names = FALSE)

# Read the file and display its content
read_exam_data <- read.csv("exam_data.csv")

print("Data Read from File:")
print(read_exam_data)

sink(file=NULL)
