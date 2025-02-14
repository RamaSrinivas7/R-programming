
sink("experiment-6 output")
sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n)
  primes[1] <- FALSE  # 1 is not a prime
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      primes[seq(i^2, n, by = i)] <- FALSE
    }
  }
  return(which(primes))
}
n <- as.integer(readline(prompt = "Enter a number: "))
print(sieve_of_eratosthenes(n))


sink(file=NULL)
