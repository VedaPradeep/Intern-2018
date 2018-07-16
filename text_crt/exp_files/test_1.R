
# word corrector

# for caliculating time
library(tictoc)

#start time
tic("t_time")

#path for text file 
filename <- "C:/Users/Rajana.Naidu/Documents/Rproject/data/big.txt"

sorted_words <- names(sort(table(strsplit(tolower(paste(readLines(file(filename)),collapse = " ")),"[^a-z]+")),decreasing=TRUE))
correct <- function(word){
    c(sorted_words[adist(word,sorted_words) <= min(adist(word,sorted_words),3)],word)[1]
}
typeof(sorted_words)
length(sorted_words)
correct("calendar")

toc()