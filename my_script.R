data("mtcars")

library(ggplot2)

ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  labs(x = "Miles Per Gallon (mpg)", 
       y = "Hp")
