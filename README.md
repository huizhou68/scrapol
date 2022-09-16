
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scrapol

<!-- badges: start -->
<!-- badges: end -->

The goal of `scrapol` is to facilitate academic study on American city
council representatives whose information is publicly available on
[Ballotpedia](https://ballotpedia.org/). This package enables users to
gather politicians’ party and district information based solely on a
url. Users could either utilize `ScrapingParty()` and
`ScrapingDistrict()` to collect party and district information
respectively or leverage the `scrapol_city()` function to gather both
information simultaneously.

This package was tailored for American city council members, although
the `ScrapingParty()` function can be used to scrape party information
generally.

The package might be updated in the future with two aims.

1.  To accommodate the need of data collection for state- and
    federal-level politicians.
2.  Based on a test of 1,041 city council members, the present version
    of the package can achieve an accuracy rate of 91.65%
    (954/1041\*100%) and 95.49% (994/1041\*100%) in terms of parsing
    party and district information. I will likely modify the code to
    further improve the accuracy rate.

## Legal Concerns

Users interested in using this package for commercial purposes should
attend to legal responsibility. According to
[Ballotpedia](https://ballotpedia.org/Ballotpedia:General_disclaimer),

> The use of automated systems or software to extract data from this
> website for commercial purposes (‘screen scraping’) is prohibited
> unless the third party has directly concluded a written license
> agreement with Ballotpedia.

In addition, there are some limitations on scraping. Per Ballotpedia’s
[robots file](https://ballotpedia.org/robots.txt), **crawlers are
allowed only between 06:00 and 08:45 UTC (GMT) with a maximum rate of
one page every 5 seconds**. Users should set a sleep time of ten seconds
or more to reduce the pressure on the website.

## Installation

You can install the development version of `scrapol` from GitHub with:

``` r
install.packages('devtools', repos='http://cran.us.r-project.org') # if not already installed
devtools::install_github("huizhou68/scrapol")
```

## Dependencies

The use of `scrapol` depends on the following packages:

1.  xml2: to request a webpage
2.  rvest: to parse a webpage
3.  stringr: to handle text
4.  magrittr: to utilize the pipe operator

Please make sure to install them before using the `scrapol` package.

## Usage

This example shows you how to collect party and district information
readily with the `scrapol_city()` function, which is built upon a for
loop that allows you to iterate over a number of urls.

``` r
library(scrapol)
urls <- c("https://ballotpedia.org/Maryanne_Jordan",
          "https://ballotpedia.org/Jeffrey_Lalloway",
          "https://ballotpedia.org/Jim_Duggan")
scrapol_city(url=urls, sleep=15)
#> Progress: 3 in total, 2 remaining. 
#> Progress: 3 in total, 1 remaining. 
#> Progress: 3 in total, 0 remaining. 
#> It's done!
#>                                        url     partisanship            district
#> 1  https://ballotpedia.org/Maryanne_Jordan Democratic Party  Boise City Council
#> 2 https://ballotpedia.org/Jeffrey_Lalloway             <NA> Irvine City Council
#> 3       https://ballotpedia.org/Jim_Duggan      Nonpartisan  Plano City Council
```

Alternatively, you may leverage the `ScrapingParty()` and
`ScrapingDistrict()` functions to collect information about party and
district respectively, but these functions will take only one url at a
time. You will need to write loops to deal with multiple urls.

``` r
library(xml2)
ScrapingParty(read_html("https://ballotpedia.org/Maryanne_Jordan"))
#> [1] "Democratic Party"
ScrapingDistrict(read_html("https://ballotpedia.org/Jim_Duggan"))
#> [1] "Plano City Council"
```

## Contact

If you encounter any bugs or have any questions about this package,
please email me at hzhou13(at)uh.edu. Thanks!
