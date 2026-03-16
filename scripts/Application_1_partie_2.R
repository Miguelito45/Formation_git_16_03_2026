# Application 1 : partie 2

library(lintr)
install.packages("styler")
library(styler)

lintr::use_lintr(type = "tidyverse")
lintr::lint("scripts/script.R")
