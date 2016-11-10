summarize <- function(x){
  center <- mean(x);spread <- sd(x);median <- median(x); MAD<- mad(x); IQR <-IQR(x)
  cat("==================================","\n")
  cat("========== Stats OUTPUT ==========","\n")
  cat("==================================","\n")
  cat("\n","Mean=","\t\t", center, "\n", "SD=","\t\t", spread, "\n", "Median=","\t",median,"\n","MAD=","\t\t", MAD, "\n","IQR=","\t\t", IQR)
  result <- list(center=center,spread=spread)
  }

summarize(flights$AirTime)

summary(flights)






mean(d$a)


x <- data.frame(d[sapply(d,is.numeric)])
x
colMeans(x, na.rm = TRUE)

#Don´t touch
summaize <- function(d_frame){
  d_frame<-!is.na(d_frame[sapply(d_frame,is.numeric)])
  print(d_frame)
  fun <- c(mean, sd)
  lapply(fun,function(f)f(d_frame, na.rm=TRUE))
}



