library("tidyverse")

baseR_dataframe <- read.csv("data/timeperiods.csv")
baseR_dataframe

tidyverse_tibble <- read_csv("data/timeperiods.csv")

class(baseR_dataframe)
class(tidyverse_tibble)

tidyverse_tibble

transport_data <- read_csv("data/transport-data.csv")

transport_data %>% group_by(sender.location) %>% 
                   class()
