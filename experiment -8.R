
sink("experiment-8 output")
first_10_lower <- letters[1:10]
last_10_upper <- toupper(letters[17:26])
subset_upper <- toupper(letters[22:24])

print(first_10_lower)
print(last_10_upper)
print(subset_upper)

sink(file=NULL)
