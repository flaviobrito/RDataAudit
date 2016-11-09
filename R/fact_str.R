#' A Convert Factor to String Function
#'
#' This function allows you to convert factors to Date.
#' @param d_frame - the data frame name
#' @param fname - the attribut name
#' @keywords data frame, attribute
#' @export
#' @examples
#' a <- c("1","2","3")
#' b <- as.factor(c("A","B","C"))
#' d <- data.frame(a,b)
#' d["b"]  <- fact_str(d,b)

fact_str <- function(d_frame, attribut) {
  return(as.character(attribut))
}
