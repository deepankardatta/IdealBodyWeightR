#' @title "body_mass_index": Calculates a body mass index
#'
#' @description Calculates a body mass index
#' @description The calculation is simple enough, but need this repeatable for a future library.
#'
#' @author Deepankar Datta <deepankardatta@nhs.net>
#'
#' @inheritParams ibw_error_checks
#'
#' @include ibw_error_checks.r
#'
#' @examples
#' # Examples
#'
#' @export

body_mass_index <- function( weight ,
                             height ,
                             weight_units = kilograms ,
                             height_units = metres ) {

  # Call the error checking function
  ibw_error_checks( weight = weight ,
                    height = height ,
                    weight_units = weight_units ,
                    height_units = height_units )

  # Does the calculation
  bmi <- weight / (height^2)

  #Return
  return(bmi)

}
