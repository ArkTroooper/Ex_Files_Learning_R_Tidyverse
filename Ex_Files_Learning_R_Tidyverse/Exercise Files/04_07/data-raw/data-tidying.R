library("tidyverse")
library("readxl")
library("lubridate")

transport_data <- read_xlsx("data-raw/transit-data.xlsx", sheet = "transport data", skip = 1)
colnames(transport_data) <- tolower(make.names(colnames(transport_data)))


transport_data %>%
  separate(sender.location, c("sender.country","sender.city"),sep = ",",extra = "merge") %>% 
  separate(receiver.location,
           c("receiver.country","receiver.city"),sep = ",",extra ="merge")

transport_data %>%
  select(sender.location) %>%
  slice(c(316,317, 318, 319, 320, 321, 322, 323, 324, 325, 326,327, 328, 329,330, 331))
write_csv(transport_data, "data/transport_data.csv")