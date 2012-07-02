class xl2tpd::params {

  # Default Listen Address for xL2TP Daemon
  # Global Options
  $debug = false
  $listen_addr = $::ipaddress
  $listen_port = '1701'

  $ppp_options = ['lcp-echo-interval 30', 'lcp-echo-failure 4', 'ms-dns  8.8.8.8',
                  'auth', 'crtscts', 'mtu 1280', 'mru 1280', 'nodefaultroute', 'hide-password',
                  'debug', 'lock', 'proxyarp', 'connect-delay 5000', 'modem', 'asyncmap 0', 'require-mschap-v2'
                 ]

  # lns defaults
  $require_authentication = 'yes'

  $assign_ip   = 'yes'
  $local_ip    = '10.100.1.1'
  $ip_range    = ['10.100.1.50', '10.100.1.200']
  $server_name = 'L2TP Server'

  $length_bit = 'yes'


  case $::operatingsystem {
    debian,ubuntu: {
      $package_list = ['ppp', 'xl2tpd']
      $service_name = 'xl2tpd'
    }
  }
}
