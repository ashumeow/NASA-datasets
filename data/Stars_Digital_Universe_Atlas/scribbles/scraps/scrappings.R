require(Rcpp)
require(inline)
ig <- read.csv("Stars_Digital_Universe_Atlas.csv")
x <- rnorm(ig)

expressions <- list(x)
signatures <- lapply(expressions, function(.) signature( x = "numeric"))
bodies <- lapply(expressions, function(.){
  sprintf( '
    int n = as<int>( n_ ) ;
    NumericVector x(x_), z(x.size()) ;
    for( int i=0; i<n; i++){
        z = %s ;
    }
    return z ;
', . ) 
} )
