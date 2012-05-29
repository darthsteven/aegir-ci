class aegir_ci_server() {

  # Ensure ntp is installed.
  class { ntp:
    ensure     => running,
    autoupdate => true,
  }

  # Ensure the auto updater is around
  class { aegir_ci_updater:
  }
}
