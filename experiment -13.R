
sink("experiment-14 output")
# Read a CSV file
data <- read.csv("your_file.csv")  # Replace with your file path
print(data)
sink(file=NULL)
