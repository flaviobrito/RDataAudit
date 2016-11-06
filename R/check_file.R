check_file <- function(fpath,fname){
  f<- paste0(fpath,"/",fname)
  if(file.access(f,4)==0){
    return(TRUE)
  } else {
    print("Please, verify the file name, file path or permissions")
    return(FALSE)
  }
}

###########################
#Example
###########################
p <- paste0(getwd(),"/R")
f <- "check_file2.R"
check_file(p,f)
