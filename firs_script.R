# Lab Version Control

#Packages
install.packages(c("tidyverse", "gapminder", "pacman"))
pacman::p_load(tidyverse, gapminder)
# Load Data
data(gapminder)
head(gapminder)

# Clean Data
gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)
