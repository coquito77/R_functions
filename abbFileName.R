abbFileName <- function(x) {

FileName <- x %>% 
  tolower %>% gsub("\\b(\\w)",  "\\U\\1",  ., perl=TRUE)

FileNameList <-  gsub("[^[:alnum:]]", " ", FileName) %>% strsplit(" ") %>% unlist()

for (i in 1:length(FileNameList)) {
  
  #print(FileNameList[i])
  
  newval <- abbreviate(FileNameList[i])
  
  #print(newval)
  
  x <- sub(FileNameList[i], newval, FileName)
  
  FileName <-  gsub("[^[:alnum:]]", "", x)
  
}

  print(FileName)
}

abbFileName("validation GROW Job Placement Report ")
