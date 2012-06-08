class xl2tpd::package {
  package { $xl2tpd::params::package_list:
    ensure => present,
  }
}
