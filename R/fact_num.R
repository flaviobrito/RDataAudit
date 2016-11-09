#' A Convert Factor to Number Function
#'
#' This function allows you to convert factors to Date.
#' @param d_frame - the data frame name
#' @param fname - the attribut name
#' @keywords data frame, attribute
#' @export
#' @examples
#' a <- as.factor(c("1","2","3"))
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016"))
#' d <- data.frame(a,b)
#' d["a"]<- fact_num(d,a)


fact_num <- function(d_frame, attribut) {
  return(as.numeric(as.character(attribut)))
}

