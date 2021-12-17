# 14122021
# http://www.hdfgroup.org/

if (!require("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
BiocManager::install(version = "3.14")
}

# install biocLite package
BiocManager::install(c("bicLite"))
source("https://bioconductor.org/biocLite.R")
