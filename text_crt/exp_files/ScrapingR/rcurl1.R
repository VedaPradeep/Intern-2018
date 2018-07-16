library(RCurl)
library(XML)
shopee_url <- "https://shopee.sg/"
shopee_page <- getURL(shopee_url)
#cat(read_url)
shopee_doc <- htmlParser(shopee_page)
head(shopee_doc)

