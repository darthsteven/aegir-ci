class aegir_ci_jenkins() {

  file {'/etc/apt/sources.list.d/jenkins.list':
    owner => 'root',
    group => 'root',
    mode => 644,
    ensure => 'present',
    content => "deb http://pkg.jenkins-ci.org/debian binary/"
  }

  exec { "jenkins apt key":
		command => "/usr/bin/wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | /usr/bin/apt-key add -",
		subscribe => File['/etc/apt/sources.list.d/jenkins.list'],
		refreshonly => true,
	}

  exec { "jenkins apt update":
		command => "/usr/bin/apt-get update",
		subscribe => File['/etc/apt/sources.list.d/jenkins.list'],
		refreshonly => true,
	}

  package {'jenkins':
    ensure => 'latest',
    require => [File['/etc/apt/sources.list.d/jenkins.list'], Exec['jenkins apt key']],
  }

  service {'jenkins':
    ensure => 'running',
    require => Package['jenkins'],
  }



}
