# Week 2

# Function 
# Function return the last expression

myfun <- function (x, y) {
  x + y
}

above_10 <- function (x) {
  use <- x > 10
  x[use]
}

# Environment - The order of the search list matter
# An environment is a collection of (symbol, value) pairs
search()  #Given Search Path for R Objects

# Lexical Scoping
# R - Values of free variables are searched in the environment (Memory) which the
# function was defined. 
# S - variables are looked up in the global workspace. (Disk)

# Dynamic Scoping
# Values of free variables are looked up in the environment from which the function 
# was called (sometimes referred to as the calling environment). 
# In R the calling environment is known as the parent frame.



Roger D. Peng. R Programming for Data Science (Kindle Location 2463). leanpub.com. 
# Loop Functions
# lapply() - Loop over a list and evaluate a function on each element
x <- list(a = 1:5, b = rnorm(10))
lapply (x, mean)
x <- list(a = 1:4, b = rnorm(10), mean, ... )
# sapply() - sapply but to simplify the result
# apply
# tapply
# mapply
  