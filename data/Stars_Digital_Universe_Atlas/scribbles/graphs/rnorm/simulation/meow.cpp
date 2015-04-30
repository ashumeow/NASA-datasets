#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::export]]
double meow(const int N) {
  RNGScope scope;		// ensure RNG gets set/reset
  NumericVector x = runif(N);
  NumericVector d = sqrt(x*x);
  return 4.0 * sum(d < 1.0) / N;
}
