library(tidyverse)
library(dplyr)
library(tidyr)
library(stringr)

dedupe_channels <- function(s) {
  c <- str_split(s, ", ")[[1]]
  c <- unique(c)
  c <- sort(c)
  if ( all(c %in% c("Email", "In-App Message", "Push",
                     "Content Card", "SMS"))) {
    output <- paste(c, collapse = ", ")
  }
  else {
    c <- c[which(c %in% c("Email", "In-App Message", "Push",
                          "Content Card", "SMS"))]
    output <- paste(c, collapse = ", ")
  }
  return(output)
}

m <- "Email, In-App Message, In-App Message, Push, Email, s, Email"
