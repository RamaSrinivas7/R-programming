
sink("experiment-16 output")
# Create a 5x4 matrix
matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4)
print(matrix_5x4)

# Create a 3x3 matrix with labels
matrix_3x3 <- matrix(1:9, nrow = 3, ncol = 3, dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3")))
print(matrix_3x3)

# Create a 2x2 matrix with labels and fill by columns
matrix_2x2 <- matrix(1:4, nrow = 2, ncol = 2, byrow = FALSE, dimnames = list(c("Row1", "Row2"), c("Col1", "Col2")))
print(matrix_2x2)
sink(file=NULL)
