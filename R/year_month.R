


#' Year-Month Date Format
#'
#' @param date
#'
#' @return
#' @export
#'
#' @examples
#' ym("2018-01-01")

ym_txt <- function(date) {

    paste0(lubridate::year(date), "-", lubridate::month(date, label = TRUE))

}


#' Month-Year Date Format
#'
#' @param date
#'
#' @return
#' @export
#'
#' @examples
#' my("2018-01-01")

my_txt <- function(date) {

    paste0(lubridate::month(date, label = TRUE), "-", lubridate::year(date))

}
