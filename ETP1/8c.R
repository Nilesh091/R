# Given vectors
vector1 <- c(1, 2, 3, 4, 5, 2, 3)
vector2 <- c("a", "b", "c", "d", "e", "b", "c")

# Create a data frame using the given vectors
df <- data.frame(Column1 = vector1, Column2 = vector2)

# Display the data frame
print("Original data frame:")
print(df)

# Find duplicated elements
duplicated_elements <- df[duplicated(df), ]

# Display duplicated elements
print("Duplicated elements:")
print(duplicated_elements)

# Find unique rows
unique_rows <- unique(df)

# Display unique rows
print("Unique rows:")
print(unique_rows)
