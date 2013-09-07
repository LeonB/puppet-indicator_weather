class indicator_weather(
  $packages  = params_lookup( 'packages' ),
  $enabled   = params_lookup( 'enabled' )
  ) inherits indicator_weather::params {

    $ensure = $enabled ? {
      true  => present,
      false => absent
    }

  include indicator_weather::package, indicator_weather::config
}
