## Random small tasks needed during the analysis

## Setup ----

# Load Libraries
library(readr)
library(dplyr)
library(ggplot2)

## Read in the UROY Data
uroy <- read_csv("data/uroy-results.csv")


## Races ----

# Get the unique Races
unique_races <- unique(uroy$Race) %>% sort()
print(unique_races)

# number of times races were run by UROY top 10
uroy %>%
  group_by(Race) %>%
  summarize(n = n()) %>%
  arrange(desc(n))

uroy %>%
  filter(Race == "IAU World Championships (India)")







