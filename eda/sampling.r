# This script will generate the sample of original dataset.

###########################################################

# load libraries.
library(data.table)
library(dplyr)

# sampling the data.
sampling <- function(src_loc, dest_loc, locale){
      data <-read_lines(file = paste("./SwiftKeyDS/raw/",src_loc,sep = ""), locale = locale(locale))
      nrows_data <- length(data)
      raw_size <- object.size(data) / 1024
      # print info about the raw data.
      sprintf(fmt = "There are %f of rows in %s", nrows_data, src_loc)
      sprintf(fmt = "The size of raw data is %fMB.", raw_size)
      # set a seed for reproducible research.
      set.seed(123)
      sample_tags <- rbinom(n = nrows_data, size = 1, prob = 0.01)
      sample_data <- data[which(sample_tags == 1), ]
      sprintf(fmt = "There are %f of rows in %s", length(sample_data), dest_loc)
      sprintf(fmt = "The size of raw data is %fMB.", object.size(sample_data)/1024)
      write_lines(x = sample_data, file = paste("./SwiftKeyDS/processed/",dest_loc,sep = ""), quote = F, row.names = F, col.names = F, fileEncoding = "UTF-8")
}

# sample "en"
sampling(src_loc = "en_US/en_US.blogs.txt", dest_loc ="en_US/sample_en_US.blogs.txt")
sampling(src_loc = "en_US/en_US.news.txt", dest_loc ="en_US/sample_en_US.news.txt")
sampling(src_loc = "en_US/en_US.twitter.txt", dest_loc ="en_US/sample_en_US.twitter.txt",locale = "en")