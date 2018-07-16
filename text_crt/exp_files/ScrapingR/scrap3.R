library(rvest)
library(xml2)
library(stringr)

scrap_web <- read_html("http://www.thesaurus.com/browse/stem") 
#https://en.wikipedia.org/wiki/Web_scraping
#https://shopee.sg
#scrap_web %>% html_nodes("h1") %>% html_text()

warn_for_status(res) # shld be "stop" and you should do error handling

pg <- content(res)


p_nodes <- scrap_web %>% html_nodes("p")
length(p_nodes)
p_nodes[1:2]

p_text <- scrap_web %>% html_nodes("p") %>% html_text()
substr(p_text[1], start=1,stop =10)

ul_text <- scrap_web %>% html_nodes("ul") %>% html_text()
length(ul_text)
ul_text[1:3]


li_text <- scrap_web %>% html_nodes("li") %>% html_text()
length(li_text)
li_text[1:3]

ol_text <- scrap_web %>% html_nodes("ol") %>% html_text()
length(ol_text)
ol_text[1:3]

