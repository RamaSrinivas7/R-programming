
sink("experiment-17 output")
# Create an array
values <- 1:12
dimensions <- c(3, 2, 2)  # 3 rows, 2 columns, 2 tables
array_with_names <- array(values, dim = dimensions, dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2"), c("Table1", "Table2")))
print(array_with_names)
sink(file=NULL)
