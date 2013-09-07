class indicator_weather::package {

    # ppa for indicator-weather
    apt::ppa { 'ppa:weather-indicator-team/ppa': }

    package { $indicator_weather::packages:
        ensure  => $indicator_weather::ensure,
        require => Apt::Ppa['ppa:weather-indicator-team/ppa'],
    }

}
