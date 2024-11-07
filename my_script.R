data("mtcars")

library(ggplot2)

ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  labs(x = "Miles Per Gallon (mpg)", 
       y = "Hp")

library(randomForest)

rf1 <- randomForest(hp ~ mpg, data = mtcars)
plot(rf1)

library(dplyr)

mtcars %>% 
  group_by(am) %>% 
  summarize(mean_mpg = mean(mpg))
