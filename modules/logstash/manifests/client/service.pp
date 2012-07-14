class logstash::client::service {
  file { '/etc/init/logstash-client.conf' :
    source => 'puppet:///modules/logstash/etc/init/logstash-client.conf'
  }
  service { 'logstash-client' :
    ensure   => running,
    provider => upstart,
    require  => [File['/etc/init/logstash-client.conf'],File['/var/log/logstash'],File['/etc/logstash/grok-patterns/apache-error']]
  }

  File <| tag == 'logstash-client' |> ~> Service['logstash-client']
}
