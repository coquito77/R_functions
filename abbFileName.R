abbFileName <- function(x) {
  
  FileName <- x %>% gsub("[^[:alnum:]]", " ", .) %>%
    tolower %>% gsub("\\b(\\w)",  "\\U\\1",  ., perl=TRUE)
  
  FileNameList <- FileName %>% strsplit(" ") %>% unlist()
  
  for (i in 1:length(FileNameList)) {
    
    #print(FileNameList[i])
    
    newval <- abbreviate(FileNameList[i])
    
    #print(newval)
    
    x <- sub(FileNameList[i], newval, FileName)
    
    FileName <-  gsub("[^[:alnum:]]", "", x)
    
  }
  
  print(FileName)
}

# e.g abbFileName("Data Show Differences Between Urban and Rural Populations")
