analyze <- function(d_frame){
  cat("============================","\n")
  cat("=      Analyzing Data      =","\n")
  cat("============================","\n\n\n")
  cat("============================","\n\n\n")
  cat("===== Data Dimensions ======","\n\n\n")
  cat("============================","\n\n\n")
  cat("Number of columns:",ncol(d_frame),"\n\n")
  cat("Number of rows:",nrow(d_frame),"\n\n")
  cat("Name of columns:",colnames(d_frame),"\n\n")
  cat("============================","\n\n")
  cat("Number os Missing Values per Column","\n")
  cat("============================","\n\n")
  print(colSums(is.na(d)))
  cat("============================","\n\n\n")
  cat("\n")
  cat("Colum types","\n")
  print(sapply(d_frame, typeof))
  cat("============================","\n\n\n")
  cat("\n")
  cat("Missing Values by columns:","\n")
  print(check_missing_all(d_frame))
  cat("============================","\n\n\n")
  cat("List rows of data that have a missing value","\n")
  print(d_frame[!complete.cases(d_frame),])
}

str(d)
a <- c(1,5,3,10)
b <- c("A","B","B","D")
e <- c(5,6,NA,8)
d <- data.frame(a,b,e)
d

zzz<-d[sapply(d,is.numeric)]

colMeans(zzz,na.rm = TRUE)

by(d$a,b, function(x) mean(x,na.rm = TRUE))

   analyze(d)






length(d)

d[!complete.cases(d),]

d[complete.cases(d),]

out <- stack(sort(sapply(d,class))[1:ncol(d)])
out
out <- cbind.data.frame(Column=out$ind, Type=out$values)
out

out <- stack(sort(sapply(d,class))[1:ncol(d)])
out_min <- sapply(d,)


describe <- function(x){
stat_functions <-c(mean,median,sd,mad,IQR)
rapply(stat_functions, function(f) f(x, na.rm = TRUE))
#cat ("Mean:",out[1], "Median:", out[2], "SD:",out[3], "MAD:", out[4], "IQR:",out[5])
}

colSums(is.na(d))
