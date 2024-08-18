# Load the required library for decision trees
library(rpart)

# Read the CSV file
data <- read.csv("USvideos.csv")

# Explore the structure and summary of the dataset
str(data)
summary(data)

# Assuming you have a target variable named 'category_id' and predictor variables, adjust the formula accordingly
# Fit a classification tree
tree_model <- rpart(category_id ~., data = data, method = "class")

# Visualize the tree
plot(tree_model)
text(tree_model)

# Print the summary of the tree
summary(tree_model)
