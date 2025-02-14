
sink("experiment-7 output")
for (i in 1:100) {
  if (i %% 3 == 0 & i %% 5 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}

sink(file=NULL)
