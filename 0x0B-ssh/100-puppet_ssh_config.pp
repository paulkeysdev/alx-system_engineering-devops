#!/usr/binenv bash
#using puppet to make changes to configuration file

file {	'ect/ssh/ssh_config':
	ensure => present,
content => "

	#ssh client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}

