library(tidyverse)

# Data set title: Lake Wingra: Fish Abundance 1995 - current.
inUrl1  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-ntl/182/21/075018c60525517cf55bc11c7a9d342c" 
infile1 <- tempfile()
try(download.file(inUrl1,infile1,method="curl"))
fish_abundance<-read_csv(infile1)

# Data set title: Lake Wingra: Fish Lengths and Weights 1995 - current.
inUrl2  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-ntl/181/22/8b668ac1a068eb9387aafd779a3f3a9c" 
infile2 <- tempfile()
try(download.file(inUrl2,infile2,method="curl"))
fish_length_weight<- read_csv(infile2)

# Data set title: North Temperate Lakes LTER: Fish Species Richness 1981 - current.
inUrl3  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-ntl/245/27/635de04f92c4f64aaa9f75594427fb61" 
infile3 <- tempfile()
try(download.file(inUrl3,infile3,method="curl"))
fish_richness<- read_csv(infile3)
fish_richness_WI<-fish_richness%>%
  filter(lakeid == "WI")
