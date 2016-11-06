#' A Check File Function
#'
#' This function allows you to check if a file can be accessed.
#' @param fpath - the file path
#' @param fname - the file name
#' @keywords file
#' @export
#' @examples
#' p <- paste0(getwd(),"/R")
#' f <- "check_file2.R"
#' check_file(p,f)
#' check_file(fpath, fname)


check_file <- function(fpath,fname){
  f<- paste0(fpath,"/",fname)
  if(file.access(f,4)==0){
    return(TRUE)
  } else {
    print("Please, verify the file name, file path or permissions")
    return(FALSE)
  }
}
