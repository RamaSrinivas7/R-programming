
sink("experiment-28 output")
# Generate a random sample of 10 letters
set.seed(123) # Setting seed for reproducibility
random_letters <- sample(LETTERS, 10, replace = TRUE)

# Create a factor from the random sample
letters_factor <- factor(random_letters)

# Extract five levels
selected_levels <- levels(letters_factor)[1:5]

print("Extracted five levels from the factor:")
print(selected_levels)

sink(file=NULL)
