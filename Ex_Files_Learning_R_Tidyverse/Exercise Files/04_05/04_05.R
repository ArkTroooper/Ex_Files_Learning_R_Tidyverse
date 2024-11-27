library("tidyverse")

transport_data <- read_csv("data/transport-data.csv")

transport_data %>%
  select(sender.location, receiver.location) %>% unique()

transport_data %>% 
  filter(receiver.location == "DEU, Templin" & date == max(date))

transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(-contains("receive"))

transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(sender.location:receiver.longitude)

transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(sender.location:receiver.longitude)

transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(number.of.items, everything())

transport_data %>%
  select(date) %>%
  .[[1]] %>%
  min()

