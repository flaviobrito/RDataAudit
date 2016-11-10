
#' List NUmber fo Levels by Column Function
#'
#' This function allows you list number of levels by column.
#' @param d_frame - the data frame name
#' @keywords data frame, attribute
#' @export
#' @examples
#' a <- as.factor(c("1",NA,"3",NA))
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016","15/09/2016"))
#' d <- data.frame(a,b)
#' n_levels(d)
#'

n_levels <- function(d_frame){
  out <- sapply(d_frame,nlevels)
  bb<- barplot(out, xlab = "Levels", ylab = "Count", main = "Levels by Columns",
               las=2,space=1)
  text(x=bb, y=bb, label=out,pos = 3, cex = 0.8, col = "red")
  }


a <- as.factor(c("1",NA,"3",NA))
b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016","15/09/2016"))
d <- data.frame(a,b)
n_levels(d)
