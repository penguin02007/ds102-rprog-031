# Week 3

## lapply
### Takes a list and always return a list
### Make use of anonymous function 
```
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
lapply(x, function (elt) elt(,1))
```
## sapply
### Simplify the result 