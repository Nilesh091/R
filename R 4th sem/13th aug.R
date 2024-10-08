# Step 1: Create some example objects
x <- c(1, 2, 3, 4, 5)          # A numeric vector
y <- data.frame(a = 1:5, b = letters[1:5])  # A data frame
z <- list(name = "John", age = 30)  # A list

# Step 2: Save these objects to a file named "mydata.RData"
save(x, y, z, file = "mydata.RData")

# Step 3: Remove the objects from the environment
rm(x, y, z)

# Step 4: List the objects in the environment to confirm removal
print(ls())  # Should return character(0) or an empty list since x, y, and z are removed

# Step 5: Load the objects back from the "mydata.RData" file
load("mydata.RData")

# Step 6: List the objects in the environment again to confirm they are reloaded
print(ls())  # Should return "x", "y", and "z"

# Step 7: View the contents of the reloaded objects
print(x)  # Should print the numeric vector
print(y)  # Should print the data frame
print(z)  # Should print the list

# Step 8: Remove specific objects (e.g., m and subject1) if they exist in the environment
# In this example, let's assume we had objects m and subject1

m <- 42              # An example object m
subject1 <- "Math"   # An example object subject1

# Remove m
