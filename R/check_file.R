<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
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
<<<<<<< HEAD
=======
=======
check_file <- function(){
return(TRUE)
}
>>>>>>> dff9b7e54607c7e3c1267a874eeb521552980748
>>>>>>> origin/master
