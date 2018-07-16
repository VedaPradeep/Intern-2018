library("wordnet")
library("tictoc")

tic("wd_time")
Sys.setenv(WNHOME = "C:/Users/Rajana.Naidu/Documents/old/Documents/soft/wordnet")

print(Sys.getenv("WNHOME"))
setDict("C:/Users/Rajana.Naidu/Documents/old/Documents/soft/wordnet/dict")

getDict()
getFilterTypes()
#synonyms("red")

toc()