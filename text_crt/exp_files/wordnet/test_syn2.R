library("wordnet")
library("tictoc")

tic("wd_time")
Sys.setenv(WNHOME = "C:/Users/Rajana.Naidu/Documents/old/Documents/soft/wordnet")

print(Sys.getenv("WNHOME"))
setDict("C:/Users/Rajana.Naidu/Documents/old/Documents/soft/wordnet/dict")

getDict()
getFilterTypes()

#if(initDict()){
filter1 <- getTermFilter("ContainsFilter","cat",TRUE) #getTermFilter(type, word, ignoreCase)
term  <- getIndexTerms( "NOUN",10,filter1)
#getSynonyms(term[[1]]) #works only when if is not there 
sapply(term , getLemma)

typeof(term)
length(term)

toc()


#/Users/Rajana.Naidu/Documents/old/Downloads