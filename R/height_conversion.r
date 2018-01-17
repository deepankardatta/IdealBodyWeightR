#' @title "height_conversion": Does height conversion for the library
#'
#' @description Does height conversion for the library
#' @description Designed to primarily be used by other functions in the library
#'
#' @author Deepankar Datta <deepankardatta@nhs.net>
#'
#' @param supplied_height Height of a person
#' @param supplied_height_units The supplied unit of the weight measurement
#' @param desired_height_units The desired unit of measurement for conversion
#'
#' @return converted_height The height in the desired unit of measurement
#'
#' @examples
#' # Example
#'
#' @export

height_conversion <- function( supplied_height ,
                               supplied_height_units ,
                               desired_height_units ) {

  # Define some constants
  valid_height_units <- c( "metres" , "feet" )

  # Error checks
  if ( is.null(height) ) { stop( "A height needs to be supplied" ) }
  if ( is.null(height_units) ) { stop( "A unit of height measurement needs to be supplied" ) }

  return(converted_height)

}
