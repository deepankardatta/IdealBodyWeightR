#' @title "ibw_error_checks": Does error checks for the library
#'
#' @description Runs through the basic error checks for the rest of the library
#'
#' @author Deepankar Datta <deepankardatta@nhs.net>
#'
#' @param weight Weight of a person in kilograms
#' @param height Height of a person in metres
#' @param weight_units (Optional) The unit of the weight measurement. Defaults to "kilograms". Other valid values are "kg" and "stone".
#' @param height_units (Optional) The unit of the height measurement. Defaults to "metres". Other valid values are "feet".
#'
#' @examples
#' # Example
#'
#' @export

ibw_error_checks <- function( weight ,
                              height ,
                              weight_units = kilograms ,
                              height_units = metres ) {

  # Define some constants
  # These will eventually go into a list in a function
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
  valid_height_units <- c( "metres" ,
                           "metre" ,
                           "meters" ,
                           "meter" ,
                           "foot" ,
                           "feet" )

  # Units checks
  # Weights first
  if ( !isTRUE( weight_units %in% valid_weight_units ) ) {
    stop("Specify a valid unit measurement for weight") }
  # Now heights
  if ( !isTRUE( height_units %in% valid_height_units ) ) {
    stop("Specify a valid unit measurement for height") }

  # Call to unit conversion function
  #
  # A previous version had a complex check where we looked at "weight_units"
  # to see if it is a synonym of "kilograms". However in the end the code
  # looked complex and this way is syntactically nicer. It does lead to the
  # conversion function being called for every weight, however this should
  # (hopefully) not be a problem on a modern computer. If someone does need
  # speed they can backport the code from the conversion function (it uses %in%
  # for searching) to speed this function up.
  #
  weight <- weight_conversion( supplied_weight = weight ,
                               supplied_weight_units = weight_units ,
                               desired_weight_units = "kilograms" )


  # As the comments above but for heights
  height <- height_conversion( supplied_height = height ,
                               supplied_height_units = height_units ,
                               desired_height_units = "metres" )

  # Value for error checks for mandatory data
  # Does this last as we need to check units initially, and then do any conversions
  if( is.null(weight) ) { stop("You must enter a weight") }
  if( is.null(height) ) { stop("You must enter a height") }
  if( weight<0 ) { stop("Weight must be a positive number") }
  if( height<0 ) { stop("Height must be a positive number") }
  if( weight>=635 ) { stop("The heaviest person was 635 kilograms tall, so a number greater than this is unlikely") }
  if( height>=3 ) { stop("Height must be in metres - the tallest person was 2.72 metres tall, so a number greater than or equal to 3 is unlikely") }

}
