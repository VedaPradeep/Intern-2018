library(rvest)
library(xml2)
library(stringr)
library(stringi)
library(selectr)
library(curl)
library(XML)
#library(magick)
#library(splashr) # my 2nd library for extracting dynamic data 
#library(seleniumPipes) # my 1 st library for extracting data

#splash_svr <- start_splash()
#splash("localhost") %>% splash_active()

word <- "wet"
url1 <- paste("http://relatedwords.org/relatedto/" ,word,sep = "")
Sys.sleep(5)
webpage1 <- read_html(url1)
#remDr <- remoteDr()
#remDr <- go("http://relatedwords.org/relatedto/" ,word,sep = "")

#render_html(url= url1,wait = 4)

#webpage1 <- render_html(url= url1,wait = 4) #read_html(url1)

#read_xml(x, encoding = encoding, ..., as_html = TRUE, options = options)
#https://en.wikipedia.org/wiki/Web_scraping
#http://www.thesaurus.com/browse
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
#//*[@id="results-area"]/div[4]
node_text_div <- webpage1 %>% html_nodes("div") %>% html_text()
typeof(node_text_div)
length(node_text_div)
print("table:")
node_text_tbl <- webpage1 %>% html_nodes("table") %>% html_text()
typeof(node_text_tbl)
length(node_text_tbl)

#node_text <- webpage1 %>% xml_structure()
#//*[@id="results-area"]/div[4]
#//*[@id="query-subtitle"]/span[2]/b
#//*[@id="results-area"]/div[4]/a[1]
#[@class = 'words']/a[@title]
#xpath = "//div[@class='words']" 
#//div[@id = 'under-results']/div[@class = 'search-ideas special-item-ctn']
#node_text <- webpage1 %>% html_nodes(xpath = "//div[@class='words']") 
#"#results-area > div:nth-child(1)"
#node_text <- webpage1 %>% html_nodes("#results-area ") %>% html_text(trim = FALSE)

#node_text <- webpage1 %>% html_nodes(xpath = "//a[@href = 'http://relatedwords.org']") #%>% html_children()
#substr(node_text,start=nchar(node_text)-100,stop = nchar(node_text))
#node_text <- webpage1 %>% html_nodes(xpath = "//a[@class = 'item']") #%>% html_text(trim = TRUE)

node_text <- webpage1 %>% html_node(xpath = "//div") %>% html_text(trim = TRUE)

"
temp1 <- node_text[2] %>% html_children()
temp1
#node_text %>% html_children()
typeof(temp1)
length(temp1)
#node_text[4] %>% html_name()
#node_text[4] %>% html_text()
"
    
node_text
#substr(node_text,start = 1,stop = 100)
typeof(node_text)
length(node_text)

#remDr %>% deleteSession
#splash_svr %>% stop_splash()
