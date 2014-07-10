class base::packages {

  ensure_packages([
      'ack-grep',
      'bzip2',
      'dnsutils',
      'dstat',
      'gettext',
      'git-core',
      'htop',
      'iotop',
      'iptraf',
      'less',
      'libc6-dev',
      'libcurl4-openssl-dev',
      'libreadline-dev',
      'libreadline5',
      'libsqlite3-dev',
      'libxml2-dev',
      'libxslt1-dev',
      'logtail',
      'mailutils',
      'man-db',
      'manpages',
      'pv',
      'tar',
      'tree',
      'unzip',
      'vim-nox',
      'xz-utils',
      'zip'
    ])

  # FIXME: Remove once Fish is purged from all machines
  package { 'fish':
    ensure => purged,
  }

  package { 'libruby1.9.1':
    ensure => '1:1.9.3.194-0~51~precise1',
  }

  package { 'ruby1.9.1-dev':
    ensure  => '1:1.9.3.194-0~51~precise1',
    require => Package['libruby1.9.1', 'ruby1.9.1'],
  }

  package { 'ruby1.9.1':
    ensure  => '1:1.9.3.194-0~51~precise1',
    require => Package['libruby1.9.1'],
  }

  include nodejs
}
