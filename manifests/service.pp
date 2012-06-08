class xl2tpd::service {
  service { $xl2tpd::params::service_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => false,
  }
}
