# spliting & reading csv file 
getwd()

sheet1_data <- read.csv("csv_data1.csv",header=T, sep=",",quote = "\"",dec=".",comment.char = "")

is.data.frame(sheet1_data)
ncol(sheet1_data)
nrow(sheet1_data)
#pra <- sheet1_data[1,1]
#typeof(sheet1_data[1,1])
#pra <-  toString(sheet1_data[1,1],sep=",")


# function to divide string into group of words 
func_parse <- function(inpStr){
   char <- toString(inpStr)
   strsplit(tolower(inpStr),"[^a-z]+")[[1]] #spliting text 
   #out <-paste(readLines(con = c,n=-1L,ok = TRUE,warn = TRUE),collapse = " ")
  
}
lcount <- 0
list_syn <- c()
list_syn_no <- c()
print("test1")
create_text <- function(csv_file){
  nrows <- nrow(sheet1_data)
  ncols <- ncol(sheet1_data)
  for(i in seq_len(nrows)){
    for(j in seq_len(ncols)){
      current_string <- func_parse(csv_file[i,j])
      prin6t(current_string)
      list_syn <- c(list_syn,current_string)
    }
    #store start & end of each dictionary
    lcount <- lcount + length(current_string)
    list_syn_no <- c(list_syn_no,lcount)
  }
  length(list_syn)
  length(list_syn_no)
}
create_text(sheet1_data)

