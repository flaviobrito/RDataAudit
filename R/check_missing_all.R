
#' Check Missing All Function
#'
#' This function allows you to check missing values in all data frame columns.
#' @param d_frame - the data frame name
#' @keywords data frame
#' @export
#' @examples
#' a <- as.factor(c("1",NA,"3",NA))
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016","15/09/2016"))
#' d <- data.frame(a,b)
#' check_missing_all(d)
#'

check_missing_all <- function(d_frame){
  lapply(d_frame,function(x)(which(is.na(x))))
}

