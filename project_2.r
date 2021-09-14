
library(tidyverse)

library(caret)
theme_set(theme_bw())
marketing <- read.csv('E:\\Desktop\\pavan\\5th sem\\3CP05\\project.csv', header = TRUE)

#print(head(mydata))
set.seed(123)
training.samples <- marketing$EstimatedSharesOutstanding %>%createDataPartition(p = 0.8, list = FALSE)
train.data  <- marketing[training.samples, ]
test.data <- marketing[-training.samples, ]


model <- lm(EstimatedSharesOutstanding~., data = train.data)
# Summarize the model
summary(model)
# Make predictions
predictions <- model %>% predict(test.data)
# Model performance
# (a) Prediction error, RMSE
RMSE(predictions, test.data$sales)
# (b) R-square
R2(predictions, test.data$sales)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))