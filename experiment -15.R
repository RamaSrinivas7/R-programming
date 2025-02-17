
sink("experiment-15 output")
# Create vectors
numeric_data <- c(1.5, 2.5, 3.5)
character_data <- c("apple", "banana", "cherry")
logical_data <- c(TRUE, FALSE, TRUE)

# Display content and type of vectors
print(numeric_data)
print(typeof(numeric_data))

print(character_data)
print(typeof(character_data))

print(logical_data)
print(typeof(logical_data))
sink(file=NULL)
