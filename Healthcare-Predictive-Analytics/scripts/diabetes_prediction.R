# Install packages (run only once)
install.packages("tidyverse")
install.packages("corrplot")
install.packages("caret")
install.packages("randomForest")

# Load libraries
library(tidyverse)
library(corrplot)
library(caret)
library(randomForest)

# View data
head(diabetes)
summary(diabetes)

# Convert Outcome to factor
diabetes$Outcome <- as.factor(diabetes$Outcome)

ggplot(diabetes, aes(x = Outcome, fill = Outcome)) +
  geom_bar() +
  labs(
    title = "Distribution of Diabetes Cases",
    x = "Outcome (0 = No Diabetes, 1 = Diabetes)",
    y = "Count"
  ) +
  theme_minimal()

ggplot(diabetes,
       aes(x = Outcome,
           y = Glucose,
           fill = Outcome)) +
  geom_boxplot(outlier.shape = NA) +
  labs(
    title = "Glucose Levels by Diabetes Status",
    x = "Diabetes Outcome",
    y = "Glucose Level"
  ) +
  theme_minimal()

ggplot(diabetes,
       aes(x = Outcome,
           y = BMI,
           fill = Outcome)) +
  geom_boxplot() +
  labs(
    title = "BMI and Diabetes Relationship",
    x = "Diabetes Outcome",
    y = "BMI"
  ) +
  theme_minimal()

ggplot(diabetes,
       aes(x = Outcome,
           y = Age,
           fill = Outcome)) +
  geom_boxplot() +
  labs(
    title = "Age and Diabetes Relationship",
    x = "Diabetes Outcome",
    y = "Age"
  ) +
  theme_minimal()

ggplot(diabetes,
       aes(x = BMI,
           y = Glucose,
           color = Outcome)) +
  geom_point(size = 3) +
  labs(
    title = "Glucose vs BMI",
    x = "BMI",
    y = "Glucose"
  ) +
  theme_minimal()

ggplot(diabetes,
       aes(x = Age,
           y = Glucose,
           color = Outcome)) +
  geom_point(size = 3) +
  labs(
    title = "Age vs Glucose Levels",
    x = "Age",
    y = "Glucose"
  ) +
  theme_minimal()

numeric_data <- diabetes

numeric_data$Outcome <- as.numeric(as.character(diabetes$Outcome))

cor_matrix <- cor(numeric_data)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  tl.col = "black",
  tl.srt = 45
)

set.seed(123)

trainIndex <- createDataPartition(
  diabetes$Outcome,
  p = 0.8,
  list = FALSE
)

train <- diabetes[trainIndex, ]
test <- diabetes[-trainIndex, ]

rf_model <- randomForest(
  Outcome ~ .,
  data = train,
  ntree = 100
)

rf_pred <- predict(rf_model, test)

confusionMatrix(rf_pred, test$Outcome)

varImpPlot(
  rf_model,
  main = "Feature Importance for Diabetes Prediction"
)

library(caret)
library(randomForest)

set.seed(123)

trainIndex <- createDataPartition(
  diabetes$Outcome,
  p = 0.8,
  list = FALSE
)

train <- diabetes[trainIndex, ]
test <- diabetes[-trainIndex, ]

rf_model <- randomForest(
  Outcome ~ .,
  data = train,
  ntree = 100
)

print(rf_model)

rf_pred <- predict(
  rf_model,
  test
)

confusionMatrix(
  rf_pred,
  test$Outcome
)

varImpPlot(
  rf_model,
  main = "Feature Importance for Diabetes Prediction"
)