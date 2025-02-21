sink("experiment 30 output")
# Load dataset
data(ChickWeight)

# (a) Create Multiple Regression Model (Weight ~ Time + Diet)
model <- lm(weight ~ Time + as.factor(Diet), data = ChickWeight)

# Model Summary
summary(model)

# (b) Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = factor(1, levels = unique(ChickWeight$Diet)))
predicted_weight <- predict(model, new_data)
print(paste("Predicted Weight:", predicted_weight))

# (c) Compute Error (RMSE)
actual_weights <- ChickWeight$weight
predicted_weights <- predict(model, ChickWeight)
rmse <- sqrt(mean((actual_weights - predicted_weights)^2))

print(paste("Root Mean Squared Error (RMSE):", rmse))

sink(file=NULL)