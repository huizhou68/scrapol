#' Scraping City Council Members' Party and District Information
#'
#' @param url A vector of urls pointing to politicians' webpages on Ballotpedia
#' @param sleep The sleep time between two visits
#'
#' @return A dataframe consists of url, partisanship, and district
#' @export
#' @importFrom magrittr %>%
#' @importFrom rvest html_nodes
#' @importFrom rvest html_text
#' @importFrom stringr str_replace
#' @importFrom stringr str_detect
#' @importFrom xml2 read_html
#' @examples
#' url <- c("https://ballotpedia.org/Angelique_Ashby", "https://ballotpedia.org/Connie_Dodson")
#' scrapol_city(url, sleep=15)
scrapol_city <- function(url, sleep) {

  if (sleep < 10) {
    print("Please set sleep time to 10 seconds or above.")
  }

  else {

    FinalResults <- data.frame()

    for (i in 1:length(url)) {

      cat('Progress:', length(url), 'in total,', length(url)-i, 'remaining.', '\n')

      Sys.sleep(sleep)

      tryCatch({MemberWebpage <- read_html(url[i], encoding="UTF-8", options=c("NOERROR", "NOWARNING"))
      partisanship <- ScrapingParty(MemberWebpage)
      district <- ScrapingDistrict(MemberWebpage)},

      warning = function(w) {
        partisanship <<- NA
        district <<- NA
      },

      error = function(e) {
        partisanship <<- NA
        district <<- NA
      })

      result <- data.frame(cbind(url=url[i], partisanship, district))
      FinalResults <- rbind(FinalResults, result)

      if (i==length(url)) {
        cat("It's done!")
        return(FinalResults)
      }
    }
  }

}
