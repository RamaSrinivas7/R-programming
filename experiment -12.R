
sink("experiment-12 output")
# Create three vectors
a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(7, 8, 9)

# Combine vectors into a matrix
matrix_combined <- cbind(a, b, c)
print(matrix_combined)
sink(file=NULL)
