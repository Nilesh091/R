# Create the first matrix
matrix1 <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
print("Matrix 1:")
print(matrix1)

# Create the second matrix
matrix2 <- matrix(13:28, nrow = 4, ncol = 4, byrow = TRUE)
print("Matrix 2:")
print(matrix2)

# Concatenate the matrices row-wise
concatenated_matrix <- rbind(matrix1, matrix2)
print("Concatenated Matrix:")
print(concatenated_matrix)
