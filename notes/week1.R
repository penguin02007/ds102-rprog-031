# Week 1 Notes
## R Objects
## R has five basic or “atomic” classes of objects:
  
## character
## numeric (real numbers)
## integer
## complex
## logical (True/ False)


## A vector can only contain objects of the same class.
## A list is represented as a vector but can contain objects of different classes.

## Any object that contains data is called a data structure and numeric vectors are the simplest type of data structure in R.
## In fact, even a single number is considered a vector of length one.

## Textual Data Formats
## dput - Writes ASCII text representation of an R or
## pass data around by deparse object and read it back with dget.

## dget - use on single object, dump uses on multiple objects

# File Connection
```
fh1 <- file("foo.txt", "r")
data <- read.csv(fh1)
close(fh1)
```

# File Connection to URL
uh1 <- url("http://www.jhsph.edu", "r")
x <- readLines (uh1)

# Subsetting - Vector
# Single bracket - extract elements of a list of data frame and aways returns an object of the same class
# Dollar sign - extract index or element of a list or data frame.

x <- c("a","b","c")
x[x > "a"]  # Subset letter greater than 'a'
x > "a"   # Logical comparison, return logical vectors 

# Subsetting - List
x <- list ( foo = 1:4, bar = 0.6, goo = "ya")
x[1,3] # Extract $foo and $goo
x[[1:2]] # Extract multiple elements in $foo
x$bar # Same as above but use literal names

# Subsetting - Matrix
x <- matrix(1:6, 2, 3)  # 2r x 3c matrix
x[1, ]  # Return vecotr with single row
x[1,2, drop = FALSE] # Preserve dimension of the object

# Partial Matching
x <- list ( foo = 1:4, bar = 0.6, goo = "ya")
x$b # Same as x$bar

# Remove NA Values in single element
x <- c("a", 1:2, NA, 3:4)
x.na <- is.na(x)
x[!x.na]

# Remove NA Values in muliple elements
x <- c(5, 1, 2, NA)
y <- c(NA, NA, NA, 9)
x <- c(1,2,NA,4,NA)
y <- c("a", "b", "c", NA, NA)
good <- complete.cases(x, y)    #Same as na.rm in mean()
x[good]
x[good, ][1:6,]   # Remove NAs in the first six rows

# Vectorized Matrix Operations
x <- matrix(1:4, 2, 2)
y <- matrix(rep(10,4),2,2)
x %*% y   # True matrix multipcation
[1 * 10 + 3 * 10] [1 * 10 + 3 * 10]
[2 * 10 + 4 * 10] [2 * 10 + 4 * 10]

