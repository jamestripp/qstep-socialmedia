# 1_r_intro.R
# Intro code as a .R script file (i.e., not a notebook)

# Numbers, characters and tables

'this is a string'

44

382

# This is a comment

# Here is another one. I like concise comments.

# Be nice to your future self and others: add comments to your code.

45/7

7 * 38404

3 + 2

# Exponential transformation
exp(38)

# Log transformation
log(27)

ma_function <- function(x) {
  (x * 10) + 2
}

ma_function(22)

ma_function(362)

?log

this_one <- 'a nice little string for us to use'
another <- 4763
and_a_final_one <- 12

this_one

log(another)
exp(and_a_final_one)

x <- c(this_one, 'some other series of character')
y <- c(another, and_a_final_one)

b <- c(this_one, another)

names <- c('james', 'joan')
ages <- c(44, 54)
data.frame(names, ages, stringsAsFactors = FALSE)

df <- data.frame(names, ages, stringsAsFactors = FALSE)

df$names

df[2,]

str(df)
names(df)

install.packages(c('tidyverse', 'ggplot2'))

library(ggplot2)
library(tidyverse)

df <- mtcars
str(mtcars)
?mtcars

ggplot(data = df, aes(x = mpg, y = wt)) +
  geom_line()

ggplot(data = df, aes(x = mpg, y = wt, color = gear)) +
  geom_point()

ggplot(data = df, aes(x = mpg, y = wt, color = gear)) +
  geom_point() +
  facet_grid(.~vs)

?ggplot2

library(tidyverse)

df

as_tibble(df)

tb <- as_tibble(df)
filter(tb, vs == 1)

group_by(tb, vs)

tb %>%
  filter(gear == 4) %>%
  group_by(vs)

tb %>%
  group_by(gear) %>%
  summarise(
    count = n(),
    mpg_mean = mean(mpg)
  )

tb %>%
  group_by(gear) %>%
  summarise(
    count = n(),
    mpg_mean = mean(mpg)
  ) %>%
  ggplot(aes(x = gear, y = mpg_mean)) +
  geom_line() +
  geom_point()

