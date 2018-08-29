[![Build
Status](https://travis-ci.org/adamjdeacon/checkLuhn.svg?branch=master)](https://travis-ci.org/adamjdeacon/checkLuhn)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/adamjdeacon/checkLuhn?branch=master&svg=true)](https://ci.appveyor.com/project/adamjdeacon/checkLuhn)
[![Coverage
Status](https://codecov.io/gh/adamjdeacon/checkLuhn/branch/master/graph/badge.svg)](https://codecov.io/gh/adamjdeacon/checkLuhn?branch=master)

## Overview

checkLuhn is package to assist checking PANs (credit/debit card number) or any
other number that uses the Luhn algorithum to validte.

The algorithm is in the public domain and is in wide use today. It is specified 
in ISO/IEC 7812-1. It is not intended to be a cryptographically secure hash 
function; it was designed to protect against accidental errors, not malicious 
attacks. Most credit cards and many government identification numbers use the 
algorithm as a simple method of distinguishing valid numbers from mistyped or 
otherwise incorrect numbers.

## Installation

``` r
# The easiest way to get checkLuhn:
install.packages("checkLuhn")
```

### Development version

To get a bug fix, or use a feature from the development version, you can
install dplyr from GitHub.

``` r
# install.packages("devtools")
devtools::install_github("adamjdeacon/checkLuhn")
```

## Usage

``` r
library(checkLuhn)

# Invalid number
input <- "4111 2234 2242 1234"
checkLuhn(input)
[1] FALSE

# Valid number
input <- "34000000 0000 009"
checkLuhn(input)
[1] TRUE
```

## Getting help

If you encounter a clear bug, please file a minimal reproducible example
on [github](https://github.com/adamjdeacon/checkLuhn/issues).
