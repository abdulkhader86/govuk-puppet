# == Class: govuk_bundler::bundler
#
# Manage the config used by bundler for access to gemstash.
#
# === Parameters
#
# [*server*]
#   The gemstash server to use
#
class govuk_bundler::config(
  $user_home = '/home/deploy',
  $server = 'http://127.0.0.1:9292',
) {
  file { "${user_home}/.bundle":
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
  }

  file { "${user_home}/.bundle/config":
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('govuk_bundler/bundle_config.erb'),
  }
}
