#' A Convert Currency to Number Function
#'
#' This function allows you to convert factors to Date.
#' @param d_frame -  data frame name
#' @param fname -  attribut name
#' @param cformat - format string
#' @keywords data frame, attribute, format
#' @export
#' @examples
#' a <- c("R$1.000,00","R$2.000,00","R$300,00")
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016"))
#' d <- data.frame(a,b)
#' d["a"]<- currency_num(d,a, "BR")
#'
#' a <- c("$1,000.00","$2,000.00","$300.00")
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016"))
#' d <- data.frame(a,b)
#' d["a"]<- currency_num(d,a, "US")


currency_num <- function(d_frame, attribut, cformat = "BR") {
  if (cformat == "BR") {
    attribut <- gsub("[R$.]", "", attribut)
    attribut <- gsub(",", ".", attribut)
    return(as.numeric(as.character(attribut)))
  } else if (cformat == "US") {
    attribut <- gsub("[$,]", "", attribut)
    return(as.numeric(as.character(attribut)))

  }
}
