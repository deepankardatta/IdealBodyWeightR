#' @title "ideal_body_weight_devine": Calculates the ideal body weight by the Devine formula
#'
#' @description Calculates the ideal body weight by the Devine formula.
#'
#' @author Deepankar Datta <deepankardatta@nhs.net>
#'
#' @inheritParams ibw_error_checks
#'
#' @include ibw_error_checks.r
#'
#' @examples
#' # Loads the data
#'
#' @export

ideal_body_weight_devine <- function( weight ,
                                      height ,
                                      weight_units = kilograms ,
                                      height_units = metres ) {

  # Call the error checking function
  ibw_error_checks( weight = weight ,
                    height = height ,
                    weight_units = weight_units ,
                    height_units = height_units )



}
