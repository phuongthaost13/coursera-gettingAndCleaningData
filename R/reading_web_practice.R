library(sqldf)
library(data.table)
library(tidyverse)

#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv",
              destfile = "acs.csv")

acs <- as_tibble(fread("data/acs.csv"))
acsk <- unique(acs$AGEP)


acsc <- sqldf("select distinct pwgtp1 from acs")


#download.file("http://biostat.jhsph.edu/~jleek/contact.html",
              destfile = "data/contact.html")

library(XML)
con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode <- readLines(con)
close(con)
htmlCode



