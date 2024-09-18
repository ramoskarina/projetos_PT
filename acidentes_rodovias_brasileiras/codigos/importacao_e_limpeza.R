library(tidyverse)
library(magrittr)
library(stringr)

files <- list.files(path = "dados_brutos", 
    pattern = "*.csv", 
    full.names = TRUE)

data_list <- lapply(files, function(file) {
    read.csv2(file, sep = ";")
})

dados <- do.call(rbind, data_list)

head(dados)
summary(dados)

teste <- dados %>%
    filter(mortos > 1)

summary(teste)
