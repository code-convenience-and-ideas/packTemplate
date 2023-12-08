
<!-- README.md is generated from README.Rmd. Please edit that file -->

# packTemplate

<!-- badges: start -->

[![R-CMD-check](https://github.com/code-convenience-and-ideas/packTemplate/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/code-convenience-and-ideas/packTemplate/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/code-convenience-and-ideas/packTemplate/branch/main/graph/badge.svg)](https://app.codecov.io/gh/code-convenience-and-ideas/packTemplate?branch=main)
<!-- badges: end -->

The goal of packTemplate is to build up an example of how I like to
build and maintain R packages.

The hope is to integrate the various parts I’d like for ideally having a
modern Continuous Integration, Continuous Development (CI/CD) approach
to R code. To that end, I importantly aim to cover: \* Github actions
checking the package build \* Automatic testing checks for the code with
test packages and coverage checking \* Git pre-commit operations to
enforce consistent styles and formatting on the code \* A nice, modern
logging approach to \* Automatic documentation and site building with
example of vignettes, new, readmes and a package website.

## Installation

You can install the development version of packTemplate like so:

``` r
# You can install thhis package directly from github
devtools::install_github("https://github.com/code-convenience-and-ideas/packTemplate.git")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(packTemplate)

## basic example code
packTemplate::hello()
#> [1] "Hello, world!"
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
