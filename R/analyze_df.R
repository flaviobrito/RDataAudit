
#' Analyze Data Frame
#'
#' This function allows you to check missing values.
#' @param data - data object
#' @keywords data frame, attribute
#' @export
#' @examples
#' a <- as.factor(c("1",NA,"3",NA,0))
#' b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016","15/09/2016",NA))
#' e <- c(1,3,4,5)
#' d <- data.frame(a,b,e)
#' d["b"] <- fact_date(d["b"])
#' df<-analyze_df(d)
#'


analyze_df <- function(data) {
  df_status_res = data.frame(
    q_zeros = sapply(data, function(x)
      sum(x == 0, na.rm = T)),

    p_zeros = round(100 * sapply(data, function(x)
      sum(x == 0, na.rm = T)) / nrow(data), 2),

    q_na = sapply(data, function(x)
      sum(is.na(x))),

    p_na = round(100 * sapply(data, function(x)
      sum(is.na(
        x
      ))) / nrow(data), 2),

    type = sapply(data, function(x)
      class(x)),

    unique = sapply(data, function(x)
      sum(!is.na(unique(
        x
      )))),

    qlevels = sapply(data, function(x)
      ifelse(class(x) == "factor", nlevels(x), "-")),

    mean = sapply(d, function(x)
      ifelse(class(x) == "numeric", mean(x), "-")),

    median = sapply(d, function(x)
      ifelse(class(x) == "numeric", median(x), "-")),

    sd = sapply(d, function(x)
      ifelse(class(x) == "numeric", round(sd(
        x
      ), 2), "-")),

    min = sapply(d, function(x)
      ifelse(class(x) == "numeric", min(x), "-")),

    max = sapply(d, function(x)
      ifelse(class(x) == "numeric", max(x), "-")),

    Q1 = sapply(d, function(x)
      ifelse(
        class(x) == "numeric", quantile(x, probs = 0.25), "-"
      )),
    Q3 = sapply(d, function(x)
      ifelse(
        class(x) == "numeric", quantile(x, probs = 0.75), "-"
      ))

  )
}




