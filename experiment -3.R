
sink("experiment-3 output")
seq_nums <- 20:50
cat("Sequence from 20 to 50:", seq_nums, "\n")
cat("Mean of numbers from 20 to 60:", mean(20:60), "\n")
cat("Sum of numbers from 51 to 91:", sum(51:91), "\n")

sink(file=NULL)
