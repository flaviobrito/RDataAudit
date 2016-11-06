#' A Load Data Function
#'
#' This function allows you to load many types of data
#' @param fpath - the file path
#' @param fname - the file name
#' @param ftype - the file type
#' @param fheader - if the 1st row into the file has the name os variables, inform TRUE
#' @param fstring - Receives FALSE if you don´t want to  load data as factors
#' @keywords file, header, stringFactors
#' @export
#' @examples
#' p <- paste0(getwd(),"/data")
#'list.files(p)
#'f1 <- "RH01_Data_B.csv"
#'d <- load_data(p,f1,"csv2")



load_data <-
  function(fpath,
           fname,
           ftype = "csv",
           fheader = TRUE,
           fstring = FALSE) {
    f <- paste0(fpath, "/", fname)
    if (check_file(fpath, fname) == TRUE) {
      if (ftype == "csv") {
        read.csv(file = f,
                 header = fheader,
                 stringsAsFactors = fstring)
      } else if (ftype == "csv2") {
        read.csv(
          file = f,
          header = fheader,
          stringsAsFactors = fstring,
          sep = ";"
        )
      } else if (ftype == "tab") {
        read.table(
          file = f,
          header = fheader,
          stringsAsFactors = fstring,
          sep = "\t"
        )
      } else
        return(print("Wrong option"))
    }
  }
