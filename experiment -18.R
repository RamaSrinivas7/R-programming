
sink("experiment-18 output")
# Create two vectors
vector1 <- 1:3
vector2 <- 4:6

# Create an array with two tables
array_from_vectors <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(array_from_vectors)
sink(file=NULL)
