
#' Check Missing Function
#'
#' This function allows you to check missing values.
#' @param d_frame - the data frame name
#' @param fname - the attribut name
#' @keywords data frame, attribute
#' @export
#' @examples
#' a <- as.factor(c("1",NA,"3",NA))
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016","15/09/2016"))
#' d <- data.frame(a,b)
#' check_missing(d,a)
#'

check_missing <- function(d_frame, attribute){
  list_NA <- which(is.na(attribute))
  return(list_NA)
}

