#' @title "weight_conversion": Does weight conversion for the library
#'
#' @description Does weight conversion for the library
#' @description Designed to primarily be used by other functions in the library
#'
#' @author Deepankar Datta <deepankardatta@nhs.net>
#'
#' @param supplied_weight Weight of a person
#' @param supplied_weight_units The supplied unit of the weight measurement
#' @param desired_weight_units The desired unit of measurement for conversion
#'
#' @return converted_weight The weight in the desired unit of measurement
#'
#' @examples
#' # Example
#'
#' @export

weight_conversion <- function( supplied_weight ,
                               supplied_weight_units ,
                               desired_weight_units ) {

  # Define some constants
  valid_weight_units <- c( "kilograms" ,
                           "kilogram" ,
                           "kg" ,
                           "kgs" ,
                           "kilogramme" ,
                           "kilogrammes" ,
                           "pound" ,
                           "pounds" ,
                           "lb" ,
                           "lbs" )

  # Error checks
  ## Checks if the mandatory parameters have been supplied
  if ( is.null(weight) ) { stop( "A weight needs to be supplied to the function" ) }
  if ( is.null(supplied_weight_units) ) { stop( "Specify a valid unit measurement for supplied_weight_units" ) }
  if ( is.null(desired_weight_units) ) { stop( "Specify a valid unit measurement for desired_weight_units" ) }
  ## Checks if the weight units are supported by the function
  if ( !isTRUE( supplied_weight_units %in% valid_weight_units ) ) {
    stop("Specify a valid unit measurement for supplied_weight_units") }
  if ( !isTRUE( desired_weight_units %in% valid_weight_units ) ) {
    stop("Specify a valid unit measurement for desired_weight_units") }

  # 2-step process which used an intermediate weight in kilograms allowing
  # extension with other weights

  ########################################################
  ### STEP 1: convert the supplied weight to kilograms ###
  ########################################################

  # Checks if the supplied unit is a variation of kilograms
  # If so perform no conversion to the intermediate weight
  if( supplied_weight_units %in% valid_weight_units[0:6] ) {
    intermediate_weight <- supplied_weight
  }

  # Checks if the supplied unit is a variation of (imperial) pounds
  # Convert pound to kilograms
  # Conversions from wikipedia https://en.wikipedia.org/wiki/Imperial_units#Volume
  # ( 1 pound = 0.45359237kg from Wikipedia, 0.453592kg from Google )
  if( supplied_weight_units %in% valid_weight_units[7:10] ) {
    intermediate_weight <- supplied_weight * 0.45359237
  }

  #############################################
  ### STEP 2: convert to final weight units ###
  #############################################

  # Checks if the desired unit is a variation of kilograms
  # If so perform no conversion to the final weight
  if( desired_weight_units %in% valid_weight_units[0:6] ) {
    converted_weight <- intermediate_weight
  }

  # Checks if the desired unit is a variation of (imperial) pounds
  if( desired_weight_units %in% valid_weight_units[7:10] ) {
    converted_weight <- intermediate_weight / 0.45359237
  }

  # Return the result!

  return(converted_weight)

}
