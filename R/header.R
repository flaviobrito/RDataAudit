#' A Print Header Function
#'
#' This function allows you to check if a file can be accessed.
#' @param string - text
#' @param symbol - character symbol
#' @keywords text
#' @export
#' @examples
#' header("Data Audit", "=")

header <- function(string,symbol){
string_size <- nchar(string)
dash= 24- string_size
header_left <- rep(symbol,dash+24)
header_right <- rep(symbol,dash+24)
header_string <- rep(symbol,string_size)

header_left_middle <- rep(" ",dash+24)
header_right_middle <- rep(" ",dash+22)

cat(header_left, header_string,header_right, sep = "","\n")
#cat(header_left,string,header_right,sep="","\n")
cat(header_left_middle,string,header_right_middle,sep="","\n")
cat(header_left, header_string,header_right, sep = "","\n")
}

header("Data Audit - System", "=")
