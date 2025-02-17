
sink("experiment-21 output")
# Define two vectors
vec1 <- c(1:9)
vec2 <- c(10:18)

# Create a 3D array with two 3x3 matrices
arr <- array(c(vec1, vec2), dim = c(3, 3, 2))

# Print second row of the second matrix
print(arr[2, , 2])

# Print element in the 3rd row, 3rd column of the 1st matrix
print(arr[3, 3, 1])

sink(file=NULL)
