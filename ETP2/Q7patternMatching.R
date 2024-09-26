# Given vector
vector <- c("a", "ab", "acb", "accb", "acccb", "accocb")

# (i) Find patterns with exactly 2 occurrences of 'c' in between 'a' and 'b'
pattern_i <- grep("^a[c]{2}b$", vector, value = TRUE)
cat("Patterns with exactly 2 occurrences of 'c' between 'a' and 'b':\n")
print(pattern_i)

# (ii) Find patterns with at least one occurrence of 'c' in between 'a' and 'b'
pattern_ii <- grep("^a.*c.*b$", vector, value = TRUE)
cat("\nPatterns with at least one occurrence of 'c' between 'a' and 'b':\n")
print(pattern_ii)

# (iii) Find patterns with at most one occurrence of 'c' in between 'a' and 'b'
pattern_iii <- grep("^a(c{0,1})b$", vector, value = TRUE)
cat("\nPatterns with at most one occurrence of 'c' between 'a' and 'b':\n")
print(pattern_iii)

# (iv) Find patterns with 2 to 4 occurrences of 'c' between 'a' and 'b'
pattern_iv <- grep("^a(c{2,4})b$", vector, value = TRUE)
cat("\nPatterns with 2 to 4 occurrences of 'c' between 'a' and 'b':\n")
print(pattern_iv)
