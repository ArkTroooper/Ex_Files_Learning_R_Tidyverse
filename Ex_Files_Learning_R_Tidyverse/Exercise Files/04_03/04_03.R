library("tidyverse")

baseR_import <- read.csv("data/transit-data.csv", skip = 1)

readr_import <- read_csv("data/transit-data.csv", skip = 1)
colnames(baseR_import)
colnames(readr_import)

class(baseR_import)
class(readr_import)

baseR_import$Sender.Location
readr_import$`Sender Location`