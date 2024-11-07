data("mtcars")

library(ggplot2)

ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  labs(x = "Miles Per Gallon (mpg)", 
       y = "Hp")


rf2 <- randomForest(hp ~ mpg + am + cyl, data = mtcars)
plot(rf2)

library(dplyr)

mtcars %>% 
  group_by(am) %>% 
  summarize(mean_mpg = mean(mpg))

