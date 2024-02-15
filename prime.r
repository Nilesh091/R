is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}

# Print the first 100 prime numbers
for (i in 2:100) {
  if (is_prime(i)) {
    print(i)
  }
}
