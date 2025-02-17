
sink("experiment-19 output")
# Create vectors and a matrix
vec1 <- c(1, 2, 3)
vec2 <- c("A", "B", "C")
mat <- matrix(1:4, nrow = 2)

# Create a list
my_list <- list(vector1 = vec1, vector2 = vec2, matrix = mat, function_example = sum)
print(my_list)
sink(file=NULL)
