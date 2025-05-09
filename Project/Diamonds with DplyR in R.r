library(tidyverse)
library(tinytex)

## View Diamonds Output
View(diamonds)

## Define variable for diamonds table
diamond_df <- diamonds %>% sample_frac(0.15)

## head of diamond
head(diamond_df)
![head of diamond](head of diamond.png)

## library(ggplot2)
library(ggplot2)

## df1 function
df1 <- diamond_df %>%
  select(clarity,carat,cut) %>%
 filter(carat > 0.3,cut == "Ideal")
tail(df1)


## df2 function
df2 <- diamond_df %>%
  select(clarity,color,price) %>%
  filter(color == "E",price > 900) %>%
  arrange( clarity , desc(price) )
head(df2)

## df3 function
df3 <- diamond_df %>%
  filter(carat <= 0.9) %>%
  sample_n(100) %>%
  summarise(mean_carat = mean(carat),
            sum_carat = sum(carat),
            median_carat = median(carat),
            sd_carat = sd(carat),
            n = n())
df3
