library(rvest)

web_scrap <- read_html("https://shopee.sg/Charger-Quick-Charging-Dock-Travel-for-iPhone-X-8-8-Plus-Samsung-Note-8-S8-i.50969263.819715303") 
#https://en.wikipedia.org/wiki/Web_scraping
#https://shopee.sg

div_text <- web_scrap %>% html_nodes("div") %>% html_text()
length(div_text)


table_text <- web_scrap %>% html_nodes("table") %>% html_text()
length(table_text)

h1_nodes <- web_scrap %>% html_node("shopee-product-info__header__text") %>% html_text() %>% as.numeric()
#shopee-product-info__header__text
h1_nodes


"webpage <- read_html(\"https://shopee.sg/Men's-Wear-cat.2\")
webpage

results <- webpage %>% html_nodes(\".short_desc\")
results


# code 2
#library(readtext)

filepath <- \"https://shopee.sg/\"
rt <- readtext(filepath)
rt"