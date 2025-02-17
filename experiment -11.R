
sink("experiment-11 output")
# Function to get unique elements of a string
unique_string_elements <- function(input_string) {
  unique_chars <- unique(unlist(strsplit(input_string, split = "")))
  return(unique_chars)
}

# Function to get unique numbers from a vector
unique_vector_numbers <- function(input_vector) {
  unique_numbers <- unique(input_vector)
  return(unique_numbers)
}

# Example usage
string_input <- "hello world"
vector_input <- c(1, 2, 2, 3, 4, 4, 5)

cat("Unique characters in string:", unique_string_elements(string_input), "\n")
cat("Unique numbers in vector:", unique_vector_numbers(vector_input), "\n") 
sink(file=NULL)
