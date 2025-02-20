
sink("experiment-27 output")
# Load the built-in women dataset
data("women")

# Create a factor for the height column
women$HeightFactor <- factor(women$height)

print("Women dataset with Height Factor:")
print(head(women))

sink(file=NULL)
