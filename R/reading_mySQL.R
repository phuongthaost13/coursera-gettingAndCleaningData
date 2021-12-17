## install Bioconductor
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.14")

## connecting and listing databases
ucscDb <- dbConnect(MySQL(), user = "genome",
                    host = "genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb, "show databases;"); dbDisconnect(ucscDb)


## connecting to hg19 and listitng tables
hg19 <- dbConnect(MySQL(), user = "genome", db = "hg19",
                  host="genome-mysql.cse.ucsc.edu")
allTables <- dbListTables(hg19)
