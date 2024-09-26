data("airquality")
head(airquality)
#i=subset(airquality,names(airquality)!="Solar.R")
#i
# Load the built-in dataset 'airquality'
data(airquality)

# Remove the variables Solar.R and Wind
airquality_subset <- airquality[!(names(airquality) %in% c("Solar.R", "Wind"))]

# Display the modified data frame
print("Modified airquality data frame:")
print(head(airquality_subset))

