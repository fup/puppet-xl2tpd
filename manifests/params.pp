class xl2tpd::params {

  # Default Listen Address for xL2TP Daemon
  # Global Options
  $debug = false
  $listen_addr = $::ipaddress
  $listen_port = '1701'

  $ppp_options = ['ipcp-accept-local', 'ipcp-accept-remote', 'ms-dns  8.8.8.8', 'noccp',
                  'auth', 'crtscts', 'idle 1800', 'mtu 1200', 'mru 1200', 'nodefaultroute',
                  'debug', 'lock', 'proxyarp', 'connect-delay 5000',
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
