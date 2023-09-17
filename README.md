
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/zach-quicksall/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/zach-quicksall/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to help you understand your libraries better,
and learn how to write packages.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zach-quicksall/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                                        Library
#> 1                         /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/fv/rpkkw_q539gfyp3mgkznp81m0000gs/T/RtmpW1BJQ6/temp_libpath216f7966b294
#>   n_packages
#> 1        173
#> 2          1

# Also can calculate sizes
lib_summary(sizes = TRUE)
#>                                                                                        Library
#> 1                         /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/fv/rpkkw_q539gfyp3mgkznp81m0000gs/T/RtmpW1BJQ6/temp_libpath216f7966b294
#>   n_packages  lib_size
#> 1        173 402669609
#> 2          1     14631
```
