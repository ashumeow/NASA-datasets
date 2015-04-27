```
> z <- 0.5+0.3*ig
> zz <- rpois(100,exp(z))
> summary(zz)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    1.00    2.00    1.87    3.00    6.00 
> plot(zz)
```
![rpois-zz-plot](http://geekresearchlab.net/NASA/datasets/1/rpois-zz.jpeg)

<br>

```
> hist(zz, xlim=range(zz), col="red", main="")
```
![rpois-zz-hist-plot](http://geekresearchlab.net/NASA/datasets/1/rpois-hist-zz.jpeg)
