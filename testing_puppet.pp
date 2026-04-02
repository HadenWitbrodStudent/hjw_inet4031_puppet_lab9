package { 'apache2':
  ensure => installed,
}

file { '/var/www/html/phpinfo.php':
  source  => '/home/YOUR_USERNAME/hjw_inet4031_puppet_lab9/phpinfo.php',
  notify  => Service['apache2'],
  require => Package['apache2'],
}

service { 'apache2':
  ensure => running,
  enable => true,
}
