require(Rcpp)
require(inline)
suppressMessages(library(Rcpp))
suppressMessages(library(inline))

ig <- read.csv("Stars_Digital_Universe_Atlas.csv")
x <- rnorm(ig)

# R function that will be called from C++
vecfunc <- function(x) {
  y <- x^1.05                         # do a transformation
  print(y)                            # but also print
  plot(y, ylim=c(1,8), type='b')      # and even plot
  Sys.sleep(0.225)                    # sleep before next call
  return(y)
}
plot(vecfunc)
