#' Scraping District Information
#'
#' @param MemberWebpage The html of a url obtained through the read_html function
#'
#' @return District information
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
#' District <- ScrapingDistrict(MemberWebpage); District
#' "Sacramento City Council District 1"
ScrapingDistrict <- function(MemberWebpage) {
  district <- MemberWebpage %>% html_nodes('.white+ .Party p') %>% html_text()

  if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
    district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
    return(district[1])
  }
  else {
    district <- MemberWebpage %>% html_nodes('.white+ .Party+ div') %>% html_text()
    if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
      district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
      return(district[1])
    }
    else {
      district <- MemberWebpage %>% html_nodes('.white+ .Nonpartisan p') %>% html_text()
      if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
        district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
        return(district[1])
      }
      else {
        district <- MemberWebpage %>% html_nodes('.Nonpartisan p') %>% html_text()
        if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
          district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
          return(district[1])
        }
        else {
          district <- MemberWebpage %>% html_nodes('.person div:nth-child(2)') %>% html_text()
          if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
            district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
            return(district[1])
          }
          else {
            district <- MemberWebpage %>% html_nodes('.person div:nth-child(3)') %>% html_text()
            if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
              district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
              return(district[1])
            }
            else {
              district <- MemberWebpage %>% html_nodes('.person div:nth-child(4)') %>% html_text()
              if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                return(district[1])
              }
              else {
                district <- MemberWebpage %>% html_nodes('.person div:nth-child(5)') %>% html_text()
                if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                  district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                  return(district[1])
                }
                else {
                  district <- MemberWebpage %>% html_nodes('.person div:nth-child(6)') %>% html_text()
                  if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                    district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                    return(district[1])
                  }
                  else {
                    district <- MemberWebpage %>% html_nodes('.person div:nth-child(7)') %>% html_text()
                    if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                      district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                      return(district[1])
                    }
                    else {
                      district <- MemberWebpage %>% html_nodes('.person div:nth-child(8)') %>% html_text()
                      if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                        district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                        return(district[1])
                      }
                      else {
                        district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(2)') %>% html_text()
                        if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                          district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                          return(district[1])
                        }
                        else {
                          district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(3)') %>% html_text()
                          if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                            district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                            return(district[1])
                          }
                          else {
                            district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(4)') %>% html_text()
                            if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                              district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                              return(district[1])
                            }
                            else {
                              district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(5)') %>% html_text()
                              if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                return(district[1])
                              }
                              else {
                                district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(6)') %>% html_text()
                                if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                  district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                  return(district[1])
                                }
                                else {
                                  district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(7)') %>% html_text()
                                  if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                    district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                    return(district[1])
                                  }
                                  else {
                                    district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(8)') %>% html_text()
                                    if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                      district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                      return(district[1])
                                    }
                                    else {
                                      district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(9)') %>% html_text()
                                      if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                        district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                        return(district[1])
                                      }
                                      else {
                                        district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(10)') %>% html_text()
                                        if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                          district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                          return(district[1])
                                        }
                                        else {
                                          district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(11)') %>% html_text()
                                          if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                            district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                            return(district[1])
                                          }
                                          else {
                                            district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(12)') %>% html_text()
                                            if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                              district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                              return(district[1])
                                            }
                                            else {
                                              district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(13)') %>% html_text()
                                              if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                return(district[1])
                                              }
                                              else {
                                                district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(14)') %>% html_text()
                                                if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                  district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                  return(district[1])
                                                }
                                                else {
                                                  district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(15)') %>% html_text()
                                                  if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                    district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                    return(district[1])
                                                  }
                                                  else {
                                                    district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(16)') %>% html_text()
                                                    if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                      district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                      return(district[1])
                                                    }
                                                    else {
                                                      district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(17)') %>% html_text()
                                                      if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                        district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                        return(district[1])
                                                      }
                                                      else {
                                                        district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(18)') %>% html_text()
                                                        if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                          district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                          return(district[1])
                                                        }
                                                        else {
                                                          district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(19)') %>% html_text()
                                                          if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                            district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                            return(district[1])
                                                          }
                                                          else {
                                                            district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(20)') %>% html_text()
                                                            if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                              district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                              return(district[1])
                                                            }
                                                            else {
                                                              district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(21)') %>% html_text()
                                                              if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                                district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                                return(district[1])
                                                              }
                                                              else {
                                                                district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(22)') %>% html_text()
                                                                if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                                  district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                                  return(district[1])
                                                                }
                                                                else {
                                                                  district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(23)') %>% html_text()
                                                                  if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                                    district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                                    return(district[1])
                                                                  }
                                                                  else {
                                                                    district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(24)') %>% html_text()
                                                                    if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                                      district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                                      return(district[1])
                                                                    }
                                                                    else {
                                                                      district <- MemberWebpage %>% html_nodes('#mw-content-text div:nth-child(25)') %>% html_text()
                                                                      if (length(nchar(district)) != 0 & str_detect(district[1], "[Dd]istrict|[Ww]ard|[Cc]ouncil") & !(str_detect(district[1], "House|Senate|Candidate|Assembly|Congress|School|Judicial|State"))) {
                                                                        district <- str_replace(district, " *", " ") %>% str_replace("^ ", "") %>% str_replace("^\\s?\\t*", "") %>% str_replace("\\s*$", "")
                                                                        return(district[1])
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
        }
      }
    }
  }
}
