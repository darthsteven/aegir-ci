class aegir_ci_jekins() {

  package {'jenkins':
    ensure => 'latest',
  }

  service {'jenkins':
    ensure => 'running',
    'requires' => Package['jenkins'],
  }
}
