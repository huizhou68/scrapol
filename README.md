
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scrapol

<!-- badges: start -->
<!-- badges: end -->

The goal of `scrapol` is to facilitate academic study on American
politicians whose information is publicly available on
[Ballotpedia](https://ballotpedia.org/). This package enables users to
gather politicians’ party and district information through the
`ScrapingParty()` and `ScrapingDistrict()` functions, respectively.
Alternatively, users may apply the `scrapol_city()` function to scrape
both information simultaneously.

This package was tailored for politicians at the city or county level,
although the `ScrapingParty()` function can be used to scrape party
information generally.

The package will be further developed in the future with two aims.

1.  To accommodate the need of data collection for state- and
    federal-level politicians.
2.  The present version of the package can achieve an accuracy rate of
    75% and 83% at parsing party and district information based on a
    test of 1000 politicians. I will modify the code to improve the
    accuracy rate.

## Legal Concerns

Users who are interested in scraping with this package should attend to
legal responsibility. According to
[Ballotpedia](https://ballotpedia.org/Ballotpedia:General_disclaimer),

> The use of automated systems or software to extract data from this
> website for commercial purposes (‘screen scraping’) is prohibited
> unless the third party has directly concluded a written license
> agreement with Ballotpedia.

In addition, there are some limitations on scraping. **Crawlers are
allowed only between 06:00 and 08:45 UTC (GMT) with a maximum rate of
one page every 5 seconds** (check out its robots file
[here](https://ballotpedia.org/robots.txt)). I suggest that users set a
sleep time of ten seconds or more to reduce the pressure on the website.

## Installation

You can install the development version of `scrapol` from
[GitHub](https://github.com/) with:

``` r
install.packages('devtools', repos = 'http://cran.us.r-project.org') # if not already installed
devtools::install_github("huizhou68/scrapol")
```

## Usage

This is a basic example which shows you how to collect information about
party and district for multiple politicians with the `scrapol_city()`
function.

``` r
library(scrapol)
url <- c("https://ballotpedia.org/Maryanne_Jordan",
         "https://ballotpedia.org/Jeffrey_Lalloway",
         "https://ballotpedia.org/Jim_Duggan")
scrapol_city(url, sleep=15)
#> Progress: 3 in total, 2 remaining. 
#> Progress: 3 in total, 1 remaining. 
#> Progress: 3 in total, 0 remaining. 
#> It's done!
#>                                        url     partisanship            district
#> 1  https://ballotpedia.org/Maryanne_Jordan Democratic Party  Boise City Council
#> 2 https://ballotpedia.org/Jeffrey_Lalloway             <NA> Irvine City Council
#> 3       https://ballotpedia.org/Jim_Duggan      Nonpartisan  Plano City Council
```

## Report bugs

If you encounter any bugs or have any questions about the package,
please feel free to email me at hzhou13 at uh.edu. Thank you!
