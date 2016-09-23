# == Class: Govuk::Apps::Efg_training::Db
#
# Create the EFG Training application database
#
# === Parameters
#
# [*mysql_password*]
#   The MySQL password for the 'efg_training' database
#
class govuk::apps::efg_training::db (
  $mysql_password = '',
){

  mysql::db { 'efg_training_production':
    user     => 'efg_training',
    host     => '%',
    password => $mysql_password,
  }

  # Previously in 9c8eff3 we were creating two mysql::db with the same user (efg@%) but two different passwords.
  # what actually happened is we got two databases and one user. The second password was ignored, because
  # before creating it we would check for the user's existence and assume it already existed.
  # This replicates that behaviour (there is no second password) but the efg user can access both databases
  mysql_database { 'efg_training_il0':
    charset => 'utf8',
    collate => 'utf8_general_ci',
  }
  mysql_grant { 'efg@%/efg_training_il0.*':
      user       => 'efg@%',
      table      => 'efg_training_il0.*',
      privileges => 'ALL',
  }

}