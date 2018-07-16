# Code for unmerging the given set of merged words 

library(tictoc)
library(rvest)
library(stringdist)
library(stringi)
library(stringr)
library(csv)
library(xml2)

MAX_VAL <- 29000

#test_words <- read.table("post_crt_preout_data2.csv",header=FALSE, sep="\n",quote = "\"'",colClasses = "character")[[1]]
tic("t_div")
final_words <- read.table("data_gen4.csv",header=FALSE, sep="\n",quote = "\"'",colClasses = "character")[[1]]

correct_word <- function(word){
  #min_freq <- 2
  
  ls_word <- c()
  for(j in 2:MAX_VAL){
    #print(j)
    #print(final_words[j])
    temp <- grep(final_words[j],word) 
    #print(typeof(temp))
    if(all.equal(temp,1)==TRUE){
      #print(j)
      ls_word <- c(ls_word,final_words[j]) 
    }
  }  
 
   #for(i in ls_word) print(i)
  return(ls_word)
}
print("pradeep")
temp1 <- grep("search","searchxmasdogchristmasoutfit" )
print(temp1)
ls_word <- correct_word("searchxmasdogchristmasoutfit")
#print("test1")
#Sorting found words in decreasing order of length 
ls_len <- c()
l <-length(ls_word)
print(l)

for(i in 0:l){
  #print(typeof(ls_word[i]))
  #print(nchar(ls_word[i]))
  ls_len <- c(ls_len,nchar(ls_word[i]))
}

#for(i in ls_len) print(i)
df <- cbind.data.frame(ls_word,ls_len)
sort_words <- data.frame[order(df[,1])]
for(i in sort_words) print(i)

toc()
