#' Get ecoregion data
#'
#' @return data.frame with info on ecoregions
#' @export
#'
#' @examples
data_ecoregion = function(){
  cat("reading ecoregion data \n")
  readr::read_csv(here::here("data", "wwf-wildfinder", "wildfinder-ecoregions_list.csv"))
}


#' Get mammal species data
#'
#' @return data.frame with info on mammal
#' @export
#'
#' @examples
data_mammals = function(){
  readr::read_csv(here::here("data", "wwf-wildfinder", "wildfinder-mammals_list.csv"))
}


#' Get mammal <-> ecoregion data
#'
#' @return data.frame on which mammals in ecoregions
#' @export
#'
#' @examples
data_mammals_ecoregion = function(){
  readr::read_csv(here::here("data", "wwf-wildfinder", "wildfinder-ecoregions_species.csv"))
}


#' Import pantheria data
#'
#' @return A 2 columns tibble linking species IDs to ecoregions IDs
#' @export
#'
data_pantheria   <- function() {
  readr::read_delim(
    here::here("data","pantheria-traits","PanTHERIA_1-0_WR05_Aug2008.txt"),
    delim = "\t")
}
