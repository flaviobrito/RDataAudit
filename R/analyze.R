analyze <- function(d_frame){
  header("Analyzing Data","=")
  header("Data Dimensions ","=")
  cat("Number of columns:",ncol(d_frame),"\n\n")
  cat("Number of rows:",nrow(d_frame),"\n\n")
  header("Name of columns","=")
  cat(colnames(d_frame), "\n")
  header("Number os Missing Values per Column","=")
  print(colSums(is.na(d_frame)))
  header("Column types","=")
  print(sapply(d_frame, typeof))
  header("Number of levels by columns","=")
  print(sapply(d_frame,nlevels))
  header("Missing Values by columns","=")
  print(check_missing_all(d_frame))
  header("List rows of data that have a missing value","=")
  print(d_frame[!complete.cases(d_frame),])

}


# sink("out.txt", append=FALSE, split=FALSE)
# analyze(flights)
# sink()





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
