
sink("experiment-9 output")
find_factors <- function(n) {
  return(which(n %% 1:n == 0))
}
num <- as.integer(readline(prompt = "Enter a number: "))
print(find_factors(num))
                   
sink(file=NULL)
