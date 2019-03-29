install.packages("tidyverse")
library(tidyverse)
install.packages("janitor")
library(janitor)

degree_payback<- read_csv("data/tidy_data/degrees-that-pay-back.csv") %>%
  clean_names()

college_salaries<- read_csv("data/tidy_data/salaries-by-college-type.csv")
region_salaries<- read_csv("data/tidy_data/salaries-by-region.csv")



ggplot(data= degree_payback, aes(undergraduate_major, starting_median_salary)) +
  geom_bar(stat="identity") + coord_flip()

