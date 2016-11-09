#' A Convert Factor to Date Function
#'
#' This function allows you to convert factors to Date.
#' @param d_frame - the data frame name
#' @param fname - the attribut name
#' @param format - the format string
#' @keywords data frame, attribute, format
#' @export
#' @examples
#' a <- c("1","2","3")
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016"))
#' d <- data.frame(a,b)
#' d["b"]<- fact_date(d,b, format="%d/%m/%Y")

fact_date <- function(d_frame, attribut, format = "%d/%m%/%Y") {
  return(as.Date(as.character(b), format = "%d/%m/%Y"))
}





