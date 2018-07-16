#print(strsplit(node_text_div[1],"[^a-z]+"))#substr(node_text_div[i],start = 1,stop = 30) 
"
out_temp <- webpage1 %>% html_node() %>% html_attrs()
typeof(out_temp)
length(out_temp)
substr(out_temp,start = 1,stop = 60)

out_temp1 <- webpage1 %>% html_node(xpath = \"//*[@id='results-area']/div[4]\") %>% html_text()
typeof(out_temp1)
length(out_temp1)
substr(out_temp1[1],start = 1,stop = 50)

##results-area > div.words
out_temp <- html_node(\"#results-area\") %>% html_text()
typeof( out_temp)
length(out_temp)
out_temp

doc <- xmlTreeParse(url1,useInternalNodes = TRUE)
typeof(doc)
length(doc)

#node_text <- webpage1 %>% html_nodes(xpath = \"//*[@id='results-area']/div[@class='words']/a[1]\") %>% html_text()
typeof(node_text)
length(node_text)
node_text
"
#substr(webpage1,start=1,end=1000)


#WASTE FROM scrap2.R
#scraping_wiki %>% html_nodes("h2") %>% html_name() # gives "h2"

"
node_text_h1 #word
#
for(i in node_text_h3){
  print(i)
}
#
node_text_p[i] # to get i th paragraph
#
typeof(node_text_ul[1])
length(node_text_ul[1])
substr(node_text_ul[1], start=1,stop =60)
#

for(i in 1:16){
  print(typeof(node_text_ul[i]))
  print(length(node_text_ul[i]))
  print(substr(node_text_ul[i], start=1,stop =10))
}
"
for(i in 1:10){
  print(substr(node_text_ul[i], start=1,stop =20))
}


"
library(rvest)
library(stringr)

Sys.time()
web_scrap <- read_html(\"https://shopee.sg/Kitty-Ladies-Steel-Watch-Korean-Fashion-High-end-Girls-Watch-i.10915894.416576486\")

item_name <- web_scrap %>% html_nodes(\".shopee-product-info__header__text\") %>% html_text()
item_name

"