rm(list = ls())
library(readxl)
library(foreign)
library(hexView)
library(haven)
library(readr)

getwd()
setwd("C:/Users/khongorzul/Documents/R/Datasets")

data_csv <- read.csv("bachelor.csv")
View(data_csv)

data_xlsx <- read_xlsx("bachelor.xlsx")
View(data_xlsx)

data_dta <- read_dta("bachelor.dta")
View(data_dta)

data_spss <- read.spss("HLTH1025_2016.sav")
data_spss_update <- read.spss("HLTH1025_2016.sav" , to.data.frame = TRUE,
                              use.value.labels = FALSE)
View(data_spss)
View(data_spss_update)

data_eviews <- readEViews("bachelor.wf1")
View(data_eviews)


# EXPORT ------------------------------------------------------------------

write.csv(data_csv, "C:/Users/khongorzul/Documents/R/Exported data/data.csv")
write_dta(data_dta, "C:/Users/khongorzul/Documents/R/Exported data/data.dta")
write_excel_csv(data_xlsx, "C:/Users/khongorzul/Documents/R/Exported data/data.xlsx")
write.foreign(data_spss_update, "C:/Users/khongorzul/Documents/R/Exported data.txt"
              , "C:/Users/khongorzul/Documents/R/Exported data/data.sps" ,package="SPSS"
