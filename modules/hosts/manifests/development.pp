class hosts::development {
  host { 'puppet.cluster':      ip => '127.0.0.1' }
  host { 'frontend.cluster':    ip => '127.0.0.1' }
  host { 'backend.cluster':     ip => '127.0.0.1' }
  host { 'support.cluster':     ip => '127.0.0.1' }
  host { 'data.cluster':        ip => '127.0.0.1' }
  host { 'mysql.cluster':       ip => '127.0.0.1' }
  host { 'mongodb.cluster':     ip => '127.0.0.1' }
  host { 'monitoring.cluster':  ip => '127.0.0.1' }
  host { 'cache.cluster':       ip => '127.0.0.1' }
  host { 'router.cluster':      ip => '127.0.0.1' }
  host { 'graylog.cluster':     ip => '127.0.0.1' }
  host { 'whitehall.cluster':   ip => '127.0.0.1' }

  govuk::host { 'test':
    ip              => '1.2.3.4',
    vdc             => 'testyvdc',
    legacy_aliases  => ['legacy1', 'legacy2.foo'],
    service_aliases => ['svc1'],
  }
  govuk::host { 'test2':
    ip              => '4.5.6.7',
    vdc             => 'testyvdc2',
  }

  host { 'static.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'smartanswers.dev.gov.uk':                         ip => '127.0.0.1' }
  host { 'licencefinder.dev.gov.uk':                        ip => '127.0.0.1' }
  host { 'publisher.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'private-frontend.dev.gov.uk':                     ip => '127.0.0.1' }
  host { 'panopticon.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'needotron.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'imminence.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'search.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'tariff-api.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'tariff.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'efg.dev.gov.uk':                                  ip => '127.0.0.1' }
  host { 'migratorator.dev.gov.uk':                         ip => '127.0.0.1' }
  host { 'reviewomatic.dev.gov.uk':                         ip => '127.0.0.1' }
  host { 'contentapi.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'designprinciples.dev.gov.uk':                     ip => '127.0.0.1' }
  host { 'datainsight-frontend.dev.gov.uk':                 ip => '127.0.0.1' }
  host { 'datainsight-narrative-recorder.dev.gov.uk':       ip => '127.0.0.1' }
  host { 'datainsight-weekly-reach-recorder.dev.gov.uk':    ip => '127.0.0.1' }
  host { 'datainsight-todays-activity-recorder.dev.gov.uk': ip => '127.0.0.1' }
  host { 'datainsight-format-success-recorder.dev.gov.uk':  ip => '127.0.0.1' }
  host { 'datainsight-insidegov-recorder.dev.gov.uk':       ip => '127.0.0.1' }
  host { 'feedback.dev.gov.uk':                             ip => '127.0.0.1' }
  host { 'support.dev.gov.uk':                              ip => '127.0.0.1' }
  host { 'signon.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'whitehall.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'whitehall-admin.dev.gov.uk':                      ip => '127.0.0.1' }
  host { 'whitehall-frontend.dev.gov.uk':                   ip => '127.0.0.1' }
  host { 'canary-frontend.dev.gov.uk':                      ip => '127.0.0.1' }
  host { 'canary-backend.dev.gov.uk':                       ip => '127.0.0.1' }
  host { 'travel-advice-frontend.dev.gov.uk':               ip => '127.0.0.1' }
  host { 'travel-advice-publisher.dev.gov.uk':              ip => '127.0.0.1' }
  host { 'release.dev.gov.uk':                              ip => '127.0.0.1' }
}
