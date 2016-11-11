
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
    ZerosCount = sapply(data, function(x)
      sum(x == 0, na.rm = T)),

    ZerosPct = round(100 * sapply(data, function(x)
      sum(x == 0, na.rm = T)) / nrow(data), 2),

    MissingCount = sapply(data, function(x)
      sum(is.na(x))),

    MissingPct = round(100 * sapply(data, function(x)
      sum(is.na(
        x
      ))) / nrow(data), 2),

    VarType = sapply(data, function(x)
      class(x)),

    UniqueCount = sapply(data, function(x)
      sum(!is.na(unique(
        x
      )))),

    LevelCount = sapply(data, function(x)
      ifelse(class(x) == "factor", nlevels(x), "-")),

    Mean = sapply(data, function(x)
      ifelse(class(x) == "numeric", mean(x), "-")),

    Median = sapply(data, function(x)
      ifelse(class(x) == "numeric", median(x), "-")),

    SD = sapply(data, function(x)
      ifelse(class(x) == "numeric", round(sd(
        x
      ), 2), "-")),

    Min = sapply(data, function(x)
      ifelse(class(x) == "numeric", min(x), "-")),

    Max = sapply(data, function(x)
      ifelse(class(x) == "numeric", max(x), "-")),

    Q1 = sapply(data, function(x)
      ifelse(
        class(x) == "numeric", quantile(x, probs = 0.25), "-"
      )),
    Q3 = sapply(data, function(x)
      ifelse(
        class(x) == "numeric", quantile(x, probs = 0.75), "-"
      ))

  )
}



a <- as.factor(c("1",NA,"3",NA,0))
b <- as.factor(c("10/02/2016","11/02/2016","15/03/2016","15/09/2016",NA))
e <- c(1,3,4,5,6)
d <- data.frame(a,b,e)
#d["b"] <- fact_date(d["b"])
df<-analyze_df(d)


