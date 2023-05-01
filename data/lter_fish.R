library(tidyverse)

# Data set title: North Temperate Lakes LTER: Fish Abundance 1981 - current.
inUrl1  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-ntl/7/44/6796e863c371817e3ecad736e3c2dd71" 
infile1 <- tempfile()
try(download.file(inUrl1,infile1,method="curl"))

fish_abundance<- read_csv(infile1)
fish_abundance_WI<-fish_abundance%>%
  filter(lakeid == "WI")

# Data set title: North Temperate Lakes LTER: Fish Species Richness 1981 - current.
inUrl2  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-ntl/245/27/635de04f92c4f64aaa9f75594427fb61" 
infile2 <- tempfile()
try(download.file(inUrl2,infile2,method="curl"))
fish_richness<- read_csv(infile2)
fish_richness_WI<-fish_richness%>%
  filter(lakeid == "WI")

# Data set title: Lake Wingra: Fish Lengths and Weights 1995 - current.
inUrl3  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-ntl/181/22/8b668ac1a068eb9387aafd779a3f3a9c" 
infile3 <- tempfile()
try(download.file(inUrl3,infile3,method="curl"))
fish_length_weight<- read_csv(infile3)

