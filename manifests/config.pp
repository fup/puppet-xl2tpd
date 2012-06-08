class xl2tpd::config(
  $listen_addr,
  $ppp_options
) {

  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file { '/etc/xl2tpd/xl2tpd.conf':
    ensure  => file,
    content => template('xl2tpd/xl2tpd.conf.erb'),
  }
  file { '/etc/ppp/options.xl2tpd':
    ensure  => file,
    content => template('xl2tpd/options.xl2tpd.erb'),
  }
}
