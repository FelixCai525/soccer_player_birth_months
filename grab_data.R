library(tidyverse)
library(rvest)

page <- read_html("https://en.wikipedia.org/wiki/UEFA_Euro_2020_squads")
birthdates_raw <- page %>% 
  html_elements("td:nth-child(4)") %>% 
  html_text2() %>% 
  as_tibble()

write_csv(birthdates_raw, "birthdates.csv")