# Class: aegir_ci_updater
#
#   This module allows aegir_ci to auto-update.
class aegir_ci_updater {

  cron { aegir_ci_updater:
    command => "python /opt/aegir-ci/update.py",
    user => root,
    hour => 2,
    minute => 0,
    ensure => 'present',
  }

}
