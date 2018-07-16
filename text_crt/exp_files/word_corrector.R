source("word_freq_gen.R")

#correction function for a given word

"
correct <- function(word){
  c(sorted_words[adist(word,sorted_words) <= min(adist(word,sorted_words),2)],word)[1]
}
"
#words_set <- read.csv("sorted_words_data2.csv",header=FALSE, sep=",",quote = "\"" )
#adist("the",table("sorted_words_data3.csv"))
#table_words[adist("piese",table_words) <= min(adist("piese",table_words),2)],"piese")[1]
words_list <- read.csv("data_gen3.csv",header=FALSE, sep=",",quote = "\"" )[[1]]
c(table_words[adist(as.numeric("piese"),table_words) <= min(adist(as.numeric("piese"),table_words),2)],as.numeric("piese"))[1]

"typeof(words_list)
length(words_list)

typeof(names(sort(table_words,decreasing = TRUE)))
length(names(sort(table_words,decreasing = TRUE)))"

