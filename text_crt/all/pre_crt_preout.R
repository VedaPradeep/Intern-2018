library(stringi)
library(stringr)

#reading data that need to be auto correct
sheeta_data <- read.csv("Preoutput.csv",header=FALSE, sep=",",quote = "\"")
sheetb_data <- read.csv("synOut.csv",header=FALSE, sep=",",quote = "\"")

df <- sheeta_data

Max_val <- 49999
#typeof(sheeta_data[[3]]) #list 
write.csv(sheeta_data[[3]][3:Max_val],file = "pre_crt_preout_data.csv",row.names = FALSE,col.names = TRUE)


#output_data <- read.csv("pre_crt_preout_data.csv",header = FALSE,quote = "\"")
#output_data[[1]][1] <- "Initial_text"

