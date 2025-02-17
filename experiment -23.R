
sink("experiment-23 output")
# Define four columns
cols <- c(1:24)

# Create an array with 3 rows, 4 columns, and 2 tables
arr <- array(cols, dim = c(3, 4, 2))

# Display the array
print(arr)

sink(file=NULL)
