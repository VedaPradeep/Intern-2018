
# Code for word correction in R
# word corrector
library(stringi)
library(stringr)
library(stringdist)
# for caliculating time
library(tictoc)

#start time
tic("t_time")

#path = "C:/Users/Rajana.Naidu/Documents/old/Documents/Rproject/data/big.txt"

#path for text file 
data_1 <- "C:/Users/Rajana.Naidu/Documents/old/Documents/Rproject/my1/text_crt/big.txt"
#data_2 <- "C:/Users/Rajana.Naidu/Documents/old/Documents/Rproject/my1/big2.csv"

#sort the words for the given big text
#sorted_words <- names(sort(table(strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+")),decreasing=TRUE))
# type =charracter , length = 29157, time = 1.58 s
#sorted_words <- readLines(file(data_1))
# type =charracter , length = 128457, time=0.11sec
#sorted_words <- paste(readLines(file(data_1)),collapse = " ") #cancatenate lines
# type =charracter , length = 1, time=0.18sec
#sorted_words <- tolower(paste(readLines(file(data_1)),collapse = " "))
# type =charracter , length = 1, time=0.33sec
#sorted_words <- strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+")
# type = list , length = 1, time=1.13s , to axcxess i th word : sorted_words[[1]][i]
#sorted_words <- strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+")[[1]]
# type =character , length :No of words = 1105285 ,for getting i th word = sorted_words[i]
#sorted_words <- table(strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+"))
#type = integer , length=29157,time = 1.56 s ,get i th element by = sorted_words[i]
#sorted_words <- sort(table(strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+")),decreasing = TRUE)
#all.equal(sorted_words,table(sort(sorted_words))) , there r 610/29157 words that differ bcz of sorting
#sorted_words <- names(sort(table(strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+")), decreasing =TRUE))

table_words <- table(strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+"))

write.csv(table_words,file = "data_gen1.csv",row.names = FALSE)
write.csv(sort(table_words,decreasing = TRUE),file = "data_gen2.csv",row.names = FALSE)

sorted_words <- names(sort(table_words,decreasing = TRUE))
write.csv(sorted_words,file = "data_gen3.csv",row.names = FALSE)

# data_gen1 ,data_gen2 , data_gen3 has sizes of 29,158

"
typeof(sorted_words)
length(sorted_words)
#correction function for a given word
"

correct <- function(word){
    c(sorted_words[adist(word,sorted_words) <= min(adist(word,sorted_words),2)],word)[1]
}

#correct("piese")
#correct("puppi")
#correct("thaat")
#correct("prozect")

#closeAllConnections()

#end time
toc()