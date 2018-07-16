
library(stringi)
library(stringr)
#reading ImprovedData_manDict.csv
sheet1_data <- read.csv("ImprovedData_manDict.csv",header=FALSE, sep=",",quote = "\"")
sheet2_data <- read.csv("Preoutput.csv",header=FALSE, sep=",",quote = "\"")
sheet3_data <- read.csv("synOut.csv",header=FALSE, sep=",",quote = "\"")

# is.data.frame(sheet1_data) #returns TRUE
# sheet1_data[[3]][4] #returns 4th element ,3rd coloumn , sheet1 
size <-49999 #length(sheet1_data[[3]])
"
typeof(sheet1_data[[3]][4])
length(sheet1_data[[3]][4])


a <- toString(sheet1_data[[3]][4])
typeof(a)
length(a)
strsplit(a,split='\\(')[[1]][1]
"
countaa <- 0
for(i in 3:size){
    temp1 <- toString(sheet1_data[[3]][i])
    temp2 <- toString(sheet1_data[[4]][i])
    temp3 <- toString(sheet2_data[[3]][i])
    temp4 <- toString(sheet3_data[[1]][i])
    # strsplit(temp1,split = '\\(')[[1]][1] != temp2 , temp 1with _visit & temp 2 without _visit
   if( temp1 != temp4){
     
      countaa <- countaa+1
      if(countaa < 7) print(c(i ,temp1,temp4 ))
   }
}
countaa
"
length(sheet1_data[[3]])
length(sheet2_data[[3]])
length(sheet3_data[[1]])
"
# there r "66" items where column 3 is not matching with column 4 in sheet1

