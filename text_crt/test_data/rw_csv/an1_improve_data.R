# reading a ImprovedData_manDict.csv

# file path
#C:\Users\Rajana.Naidu\Documents\old\Documents\Rproject\data\w_data
#filepath1 <- "C:/Users/Rajana.Naidu/Documents/old/Documents/Rproject/data/ImprovedData_manDict.csv"
#dataframe
library(csv)
getwd()
sheet1_data <- read.csv("ImprovedData_manDict.csv",header=T, sep=",",quote = "\"",dec=".",comment.char = "")[1]
is.data.frame(sheet1_data)
length(sheet1_data)
typeof(sheet1_data)
strsplit(tostring(sheet1_data),",")
#intable <- table(strsplit(sheet1_data,","))
#sheet1_data[1]
