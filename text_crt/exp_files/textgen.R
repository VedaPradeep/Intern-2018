
# generate big data2.txt from given data

#file paths for 3 input files
filepath1 <- "C:/Users/Rajana.Naidu/Documents/Rproject/data/w_data/synOut.csv"
filepath2 <- "C:/Users/Rajana.Naidu/Documents/Rproject/data/w_data/Preoutput.csv"
filepath3 <- "C:/Users/Rajana.Naidu/Documents/Rproject/data/w_data/ImprovedData_manDict.csv"
#sort the words for the given big text
#sorted_words <- names(sort(table(strsplit(tolower(paste(readLines(file(filepath)),collapse = " ")),"[^a-z]+")),decreasing=TRUE))

#vect <- table(strsplit(tolower(paste(readLines(file(filepath)),collapse = " ")),"[^a-z]+")[[1]])
vect1 <- strsplit(paste(readLines(file(filepath1)),collapse = " "),"[^a-z]+")[[1]]
vect2 <- strsplit(paste(readLines(file(filepath2)),collapse = " "),"[^a-z]+")[[1]]
vect3 <- strsplit(paste(readLines(file(filepath3)),collapse = " "),"[^a-z]+")[[1]]
vect <- c(vect1,vect2,vect3)
write.csv(vect,file="big2.csv",sep="")
length(vect)
typeof(vect)

