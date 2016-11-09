#' A Recode Missing Function
#'
#' This function allows you to convert miising values NA.
#' @param x -  an array, including a matrix.
#' @keywords array
#' @export
#' @examples
#' a <- as.factor(c("1","99","3","99"))
#' b <- as.factor(c(-9999,"11/02/2016","15/03/2016","15/09/2016"))
#' d <- data.frame(a,b)
#' d_new<-apply(d, MARGIN=2, recode_NA)

recode_NA <- function(x) {
 ifelse(x==99 | x==-99 | x==9999| x==-9999,NA,x)
}

