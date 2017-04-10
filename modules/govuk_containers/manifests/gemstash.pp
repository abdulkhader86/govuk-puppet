# == Class: govuk_containers::gemstash
#
#
class govuk_containers::gemstash {
  $gemstash_image = 'govuk/gemstash-alpine'
  $gemstash_image_version = 'latest'

  file { '/var/lib/gemstash':
    ensure => directory,
  }

  ::docker::image { $gemstash_image:
    ensure    => 'present',
    require   => Class['docker'],
    image_tag => $gemstash_image_version,
  }

  ::docker::run { 'gemstash':
    net              => 'host',
    ports            => ['9292:9292'],
    image            => $gemstash_image,
    require          => Docker::Image[$gemstash_image],
    volumes          => ['/var/lib/gemstash', '/root/.gemstash'],
    extra_parameters => ['-P'],
  }

  # TODO Add icinga check
}
