class xl2tpd (
  $listen_addr = $xl2tpd::params::listen_addr,
  $ppp_options = $xl2tpd::params::ppp_options
) inherits xl2tpd::params {

  anchor { 'xl2tpd::begin': }
  -> class { 'xl2tpd::package': }
  -> class { 'xl2tpd::config':
    listen_addr => $listen_addr,
    ppp_options => $ppp_options,
  }
  ~> class { 'xl2tpd::service': }
  -> anchor { 'xl2tpd::end': }
}
