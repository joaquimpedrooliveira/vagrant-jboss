class { 'jboss':
	install => 'source',
	version	=> '7',
	service_status => true,
	require => Package["unzip"]
}

#class { 'java':
#	package => "openjdk-6-jre",
#}

package { "unzip": 
	ensure => "installed",
}

package { "java-1.6.0-openjdk-devel"
	ensure => "installed",
}

#include java
#java::oracle { 'meujava':
#	version => "6",
#}

include jboss