require(Rcpp)
require(inline)
require(rbenchmark)
ig <- read.csv("Stars_Digital_Universe_Atlas.csv")
piR <- function(N) {
  x <- rnorm(ig)
  d <- sqrt(x^2)
  return(4 * sum(d < 1.0) / N)
}

## my source path to cpp file
sourceCpp("D:\\r-studio\\bin\\R-3.1.3\\library\\Rcpp\\examples\\Misc\\meow.cpp")

N <- 1e6
resR <- piR(N)
resCpp <- meow(N)

yy <- benchmark(piR(N), meow(N), order="relative")

print(yy) ## benchmark results
