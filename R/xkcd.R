

#' @title metadata about an xkcd comic
#'
#' @description
#' Given an xkcd comic number, this function grabs a json object that is associated with that number. it displays the comic in the R studio plot window
#'
#' @importFrom jsonlite read_json
#' @export
#'

xkcd <- function(number){

  #make url that takes you to the API for the comic input by the user
  url <- file.path("https://xkcd.com", number, "info.0.json")

  results <- jsonlite::read_json(url)
  return(results)

}
