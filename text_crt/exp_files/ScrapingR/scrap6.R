library(XML)

page <- readLines("\\Users/Rajana.Naidu/Documents/old/Documents/Rproject/my1/'wet' related words_ rainy humid moisture damp [446 more].html")#,collapse = "\n")

typeof(page)
length(page)
my_pattern1 <- '<h2 style="text-align:center; margin-top: 3rem;">([.]*)</h2>'
grep(my_pattern1,page[1:length(page)],value = TRUE)
#print("pra")