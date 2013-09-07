# Class: indicator_weather::params
#
# This class defines default parameters used by the main module class indicator_weather
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to indicator_weather class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class indicator_weather::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['indicator-weather']
  }

  $enabled = true

}
