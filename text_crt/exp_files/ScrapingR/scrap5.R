#library(rvest)
library(xml2)
library(stringr)
library(stringi)
library(seleniumPipes)
library(namespace)
library(phantom)

print("test1")

word <- "stem"
url1 <- paste("http://www.thesaurus.com/browse/" ,word,sep = "")
rD <- rsDriver(browser = "pantomjs",verbose = FALSE)
#Assign a client
remDr <- rD$client

remDr <- setImplicitTimeout(1000)

remDr$navigate(url1)
Sys.sleep(10)

#remDr <- remoteD(remoteServerAddr = "http://localhost" ,browserName = 'firefox',port = 4444L,javascript = FALSE)

#remDr %>% go("url1")

"for(i in 1:3){
  remDr$executeScript(paste("scroll(0,",i*10000,");"))
  Sys.sleep(3)
}


webpage1 <- read_html(url1)"
#https://en.wikipedia.org/wiki/Web_scraping
#scraping_wiki %>% html_nodes("h1")
#html_list <- c("h1","h2","h3","h4","h5","h6","p","ol","ul","li","div","table")

node_text_h1 <- webpage1 %>% html_nodes("h1") %>% html_text()
typeof(node_text_h1)
length(node_text_h1)
#substr(node_text[1], start=1,stop =20)
print("h2:")
node_text_h2 <- webpage1 %>% html_nodes("h2") %>% html_text()
typeof(node_text_h2)
length(node_text_h2)
print("h3:")
node_text_h3 <- webpage1 %>% html_nodes("h3") %>% html_text()
typeof(node_text_h3)
length(node_text_h3)
print("h4:")
node_text_h4 <- webpage1 %>% html_nodes("h4") %>% html_text()
typeof(node_text_h4)
length(node_text_h4)
print("h5:")
node_text_h5 <- webpage1 %>% html_nodes("h5") %>% html_text()
typeof(node_text_h5)
length(node_text_h5)
print("h6")
node_text_h6 <- webpage1 %>% html_nodes("h6") %>% html_text()
typeof(node_text_h6)
length(node_text_h6)
print("Paragraph:")
node_text_p <- webpage1 %>% html_nodes("p") %>% html_text()
typeof(node_text_p)
length(node_text_p)
print("UnOrderedList:")
node_text_ul <- webpage1 %>% html_nodes("ul") %>% html_text()
typeof(node_text_ul)
length(node_text_ul)
print("OrderedList:")
node_text_ol <- webpage1 %>% html_nodes("ol") %>% html_text()
typeof(node_text_ol)
length(node_text_ol)
print("IndividualList:")
node_text_il <- webpage1 %>% html_nodes("li") %>% html_text()
typeof(node_text_il)
length(node_text_il)
print("division:")
node_text_div <- webpage1 %>% html_nodes("div") %>% html_text()
typeof(node_text_div)
length(node_text_div)
print("table:")
node_text_tbl <- webpage1 %>% html_nodes("table") %>% html_text()
typeof(node_text_tbl)
length(node_text_tbl)

node_text <- webpage1 %>% html_nodes(xpath = "//div[@class='words']") %>% html_text()
node_text
typeof(node_text)
length(node_text)

#remDr %>% deleteSession
remDr$close()
rD$server$stop()
