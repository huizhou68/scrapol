
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scrapol

<!-- badges: start -->
<!-- badges: end -->

The goal of `scrapol` is to facilitate data collection with respect to
American politicians whose information is publicly available on
Ballotpedia. This package enables users to gather party and district
information through the `ScrapingParty()` and `ScrapingDistrict()`
functions, respectively. Alternatively, users may use the
`scrapol_city()` function to scrape both information simultaneously.

This package was tailored for politicians at the city or county level,
although the `ScrapingParty()` function can be used to scrape party
information generally.

The package will be further developed in the future with two aims.

1.  To accommodate the need of data collection for state- and
    federal-level politicians.
2.  Based on a test of 1000 politicians, the present version of the
    package can achieve an accuracy rate of
    ![70\\%](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;70%5C%25 "70\%")
    and
    ![80\\%](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;80%5C%25 "80\%")
    for party and district information, respectively. I will modify the
    code to further heighten the accuracy rate.

## Legal Concerns

Users who are interested in scraping with this package should attend to
legal responsibility. According to Ballotpedia,

> The use of automated systems or software to extract data from this
> website for commercial purposes, (‘screen scraping’) is prohibited
> unless the third party has directly concluded a written license
> agreement with Ballotpedia.

In addition, there is some limitation on scraping. Crawlers are allowed
only between 06:00 and 08:45 UTC (GMT) with a maximum rate of one page
every 5 seconds. I suggest that users set a sleep time of ten seconds or
more to reduce the pressure on the website.

## Installation

You can install the development version of scrapol from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("huizhou68/scrapol")
```

## Example

This is a basic example which shows you how to collect information about
party and district for multiple politicians with the `scrapol_city()`
function.

``` r
library(scrapol)
url <- c("https://ballotpedia.org/Angelique_Ashby",
         "https://ballotpedia.org/Connie_Dodson")
scrapol_city(url, sleep=15)
#> Progress: 2 in total, 1 remaining. 
#> Progress: 2 in total, 0 remaining. 
#> It's done!
#>                                       url     partisanship
#> 1 https://ballotpedia.org/Angelique_Ashby Democratic Party
#> 2   https://ballotpedia.org/Connie_Dodson      Nonpartisan
#>                             district
#> 1 Sacramento City Council District 1
#> 2      Tulsa City Council District 6
```
