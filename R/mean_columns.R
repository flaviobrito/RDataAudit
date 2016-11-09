mean_columns <- function(d_frame){
  d_frame<-d_frame[sapply(d_frame,is.numeric)]
  colMeans(d_frame,na.rm = TRUE)
}

mean_columns(d)
