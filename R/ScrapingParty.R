#' Scraping Party Information
#'
#' @param MemberWebpage The html of a politician's webpage obtained through the read_html function
#'
#' @return Party information
#' @export
#' @importFrom magrittr %>%
#' @importFrom rvest html_nodes
#' @importFrom rvest html_text
#' @importFrom stringr str_replace
#' @importFrom stringr str_detect
#' @import xml2
#' @examples
#' url <- "https://ballotpedia.org/Angelique_Ashby"
#' MemberWebpage <- xml2::read_html(url)
#' Party <- ScrapingParty(MemberWebpage); Party
#' "Democratic Party"
ScrapingParty <- function(MemberWebpage) {
  partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(2) a') %>% html_text()
  if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Ii]ndependent|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
    partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
    return(partisanship[1])
  }
  else {
    partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(3) a') %>% html_text()
    if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
      partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
      return(partisanship[1])
    }
    else {
      partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(4) a') %>% html_text()
      if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
        partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
        return(partisanship[1])
      }
      else {
        partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(5) a') %>% html_text()
        if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
          partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
          return(partisanship[1])
        }
        else {
          partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(6) a') %>% html_text()
          if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
            partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
            return(partisanship[1])
          }
          else {
            partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(7) a') %>% html_text()
            if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
              partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
              return(partisanship[1])
            }
            else {
              partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(8) a') %>% html_text()
              if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
                partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                return(partisanship[1])
              }
              else {
                partisanship <- MemberWebpage %>% html_nodes('.white:nth-child(9) a') %>% html_text()
                if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
                  partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                  return(partisanship[1])
                }
                else {
                  partisanship <- MemberWebpage %>% html_nodes('hr+ .white p') %>% html_text()
                  if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican|[Dd]emocratic|[Nn]onpartisan|[Pp]rogressive|[Ll]ibertarian|[Pp]arty")) {
                    partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                    return(partisanship[1])
                  }
                  else {
                    partisanship <- MemberWebpage %>% html_nodes('p:nth-child(5)') %>% html_text()
                    if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[1], "widget-row"))) {
                      partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                      return(partisanship[1])
                    }
                    else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[2])) & str_detect(partisanship[2], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[2], "widget-row"))) {
                      partisanship <- str_replace(partisanship[2], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                      return(partisanship[1])
                    }
                    else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[3])) & str_detect(partisanship[3], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[3], "widget-row"))) {
                      partisanship <- str_replace(partisanship[3], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                      return(partisanship[1])
                    }
                    else {
                      partisanship <- MemberWebpage %>% html_nodes('p:nth-child(6)') %>% html_text()
                      if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[1], "widget-row"))) {
                        partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                        return(partisanship[1])
                      }
                      else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[2])) & str_detect(partisanship[2], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[2], "widget-row"))) {
                        partisanship <- str_replace(partisanship[2], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                        return(partisanship[1])
                      }
                      else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[3])) & str_detect(partisanship[3], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[3], "widget-row"))) {
                        partisanship <- str_replace(partisanship[3], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                        return(partisanship[1])
                      }
                      else {
                        partisanship <- MemberWebpage %>% html_nodes('p:nth-child(7)') %>% html_text()
                        if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[1], "widget-row"))) {
                          partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                          return(partisanship[1])
                        }
                        else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[2])) & str_detect(partisanship[2], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[2], "widget-row"))) {
                          partisanship <- str_replace(partisanship[2], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                          return(partisanship[1])
                        }
                        else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[3])) & str_detect(partisanship[3], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[3], "widget-row"))) {
                          partisanship <- str_replace(partisanship[3], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                          return(partisanship[1])
                        }
                        else {
                          partisanship <- MemberWebpage %>% html_nodes('p:nth-child(8)') %>% html_text()
                          if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[1], "widget-row"))) {
                            partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                            return(partisanship[1])
                          }
                          else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[2])) & str_detect(partisanship[2], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[2], "widget-row"))) {
                            partisanship <- str_replace(partisanship[2], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                            return(partisanship[1])
                          }
                          else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[3])) & str_detect(partisanship[3], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[3], "widget-row"))) {
                            partisanship <- str_replace(partisanship[3], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                            return(partisanship[1])
                          }
                          else {
                            partisanship <- MemberWebpage %>% html_nodes('p:nth-child(9)') %>% html_text()
                            if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[1], "widget-row"))) {
                              partisanship <- str_replace(partisanship, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                              return(partisanship[1])
                            }
                            else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[2])) & str_detect(partisanship[2], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[2], "widget-row"))) {
                              partisanship <- str_replace(partisanship[2], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                              return(partisanship[1])
                            }
                            else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[3])) & str_detect(partisanship[3], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[3], "widget-row"))) {
                              partisanship <- str_replace(partisanship[3], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                              return(partisanship[1])
                            }
                            else {
                              partisanship <- MemberWebpage %>% html_nodes('p:nth-child(10)') %>% html_text()
                              if (length(nchar(partisanship)) != 0 & str_detect(partisanship[1], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[1], "widget-row"))) {
                                partisanship <- str_replace(partisanship[1], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                return(partisanship[1])
                              }
                              else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[2])) & str_detect(partisanship[2], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[2], "widget-row"))) {
                                partisanship <- str_replace(partisanship[2], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                return(partisanship[1])
                              }
                              else if (length(nchar(partisanship)) != 0 & !(is.na(partisanship[3])) & str_detect(partisanship[3], "[Rr]epublican Party|[Dd]emocratic Party|[Dd]emocrat|[Rr]epublican") & !(str_detect(partisanship[3], "widget-row"))) {
                                partisanship <- str_replace(partisanship[3], " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                return(partisanship[1])
                              }
                              else {return(NA)}
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
