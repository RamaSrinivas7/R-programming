
sink("experiment-22 output")
# Define three 2x3 arrays
arr1 <- matrix(1:6, nrow = 2, byrow = TRUE)
arr2 <- matrix(7:12, nrow = 2, byrow = TRUE)
arr3 <- matrix(13:18, nrow = 2, byrow = TRUE)

# Combine row-wise
combined_arr <- rbind(arr1, arr2, arr3)

print(combined_arr)

sink(file=NULL)
