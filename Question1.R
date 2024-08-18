# Load the required library for linear regression
library(stats)

# Read the CSV file
data <- read.csv("data.csv")

# Select the columns you want to use for linear regression
selected_data <- data[, c("Engine.HP", "highway.MPG", "city.mpg", "Popularity", "MSRP")]

# Rename the columns for convenience
colnames(selected_data) <- c("Engine_HP", "highway_MPG", "city_MPG", "Popularity", "MSRP")

# Remove rows with missing values if needed
selected_data <- na.omit(selected_data)

# Perform linear regression
model <- lm(MSRP ~ ., data = selected_data)

# Print the summary of the regression model
summary(model)
