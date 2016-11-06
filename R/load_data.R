<<<<<<< HEAD
load_data <- function(fpath,fname,ftype="csv", fheader = TRUE, fstring=FALSE) {
  f <- paste0(fpath,"/",fname)
  if(check_file(fpath,fname)==TRUE) {
    if(ftype=="csv") {
          read.csv(file=f, header = fheader, stringsAsFactors = fstring)
    } else if(ftype=="csv2") {
      read.csv(file = f, header = fheader, stringsAsFactors = fstring, sep = ";")
    } else if(ftype=="tab") {
      read.table(file = f, header = fheader, stringsAsFactors = fstring, sep = "\t")
  } else
        return(print("Wrong option"))
  }
}

###########################
#Example
###########################
p <- paste0(getwd(),"/data")
list.files(p)
f1 <- "RH01_Data_B.csv"
d <- load_data(p,f1,"csv2")
=======
load_data <- function(){
  return(TRUE)
}
>>>>>>> dff9b7e54607c7e3c1267a874eeb521552980748
