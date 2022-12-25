## a sample script for downloading USGS water quality data
# new version of dataRetrieval can be found in the following link:
# https://waterdata.usgs.gov/blog/dataretrieval/

library(dataRetrieval) 
library(lubridate)
library(dplyr)
library(readr)

rm(list = ls())

# retrieval setup -------------------
# DO code = "00300"

siteNumber = c("01054200", "01111500")

parameterCd = "00300"


qwData = tryCatch({readNWISqw(siteNumber, 
                              parameterCd, 
                              startDate = "1980-01-01", 
                              endDate = "2019-12-31",
                              expanded = FALSE)},
                  error = function(e){qwData = data.frame()})
  


# or using the new version ------------------------------------------------
# the above NWIS qw web services are being retired, changes to NWIS QW services:
# https://cran.r-project.org/web/packages/dataRetrieval/vignettes/qwdata_changes.html

wqpData = tryCatch({readWQPqw(paste0("USGS-", siteNumber), 
                              parameterCd, 
                              startDate = "1980-01-01", 
                              endDate = "2019-12-31")},
                   error = function(e){wqpData = data.frame()})
