library(rvest)
library(stringr)

#word <- "stem"
webscrap <- read_html("http://www.thesaurus.com/browse/stem")

#//*[@id="initial-load-content"]/div/div/div[2]/section[1]/div
#//*[@id="initial-load-content"]/div/div/div[2]/section[1]/ul/li[1]/span
#read.table(webScrap)
output <- webscrap %>% html_node("initial-load-content") %>% html_text()
typeof(webscrap)
length(webscrap)
typeof(output)
length(output)
output
substr(output[1], start=1,stop =10)