# == Class: govuk::node::s_exception_handler
#
# exception-handler node
#
class govuk::node::s_exception_handler inherits govuk::node::s_base {
  include mongodb::server
  include mongodb::backup
  include govuk::node::s_ruby_app_server
  include nginx
  include govuk::apps::errbit

  Govuk::Mount['/var/lib/mongodb'] -> Class['mongodb::server']
  Govuk::Mount['/var/lib/automongodbbackup'] -> Class['mongodb::backup']
}
