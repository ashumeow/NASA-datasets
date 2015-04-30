```R
> source("perf-benchmark.R")
  test replications elapsed relative user.self sys.self user.child sys.child
1   ig        10629    0.05        1      0.05        0         NA        NA
```
![perf-benchmark](http://geekresearchlab.net/NASA/datasets/1/perf-benchmark.jpeg)
<br>
```R
> print(x)
  test replications elapsed relative user.self sys.self user.child sys.child
1   ig        10629    0.07        1      0.04        0         NA        NA
> rnorm(x)
[1]  0.12606642 -0.41247305 -1.18059068  0.02346269 -0.32638775  0.49842009  0.39156327
[8] -0.39753069
> summary(x)
 test    replications      elapsed        relative   user.self       sys.self
 ig:1   Min.   :10629   Min.   :0.07   Min.   :1   Min.   :0.04   Min.   :0  
        1st Qu.:10629   1st Qu.:0.07   1st Qu.:1   1st Qu.:0.04   1st Qu.:0  
        Median :10629   Median :0.07   Median :1   Median :0.04   Median :0  
        Mean   :10629   Mean   :0.07   Mean   :1   Mean   :0.04   Mean   :0  
        3rd Qu.:10629   3rd Qu.:0.07   3rd Qu.:1   3rd Qu.:0.04   3rd Qu.:0  
        Max.   :10629   Max.   :0.07   Max.   :1   Max.   :0.04   Max.   :0  
                                                                             
   user.child    sys.child  
 Min.   : NA   Min.   : NA  
 1st Qu.: NA   1st Qu.: NA  
 Median : NA   Median : NA  
 Mean   :NaN   Mean   :NaN  
 3rd Qu.: NA   3rd Qu.: NA  
 Max.   : NA   Max.   : NA  
 NA's   :1     NA's   :1 
 ```
 <br>
 ![test](http://geekresearchlab.net/NASA/datasets/1/test.jpeg)
