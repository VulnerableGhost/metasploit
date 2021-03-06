##
# $Id: generic.rb 5773 2008-10-19 21:03:39Z ramon $
##

##
# This file is part of the Metasploit Framework and may be subject to 
# redistribution and commercial restrictions. Please see the Metasploit
# Framework web site for more information on licensing and terms of use.
# http://metasploit.com/projects/Framework/
##


require 'msf/core'


###
#
# This class implements a "nop" generator for PHP payloads
#
###
class Metasploit3 < Msf::Nop

	def initialize
		super(
			'Name'        => 'PHP Nop Generator',
			'Alias'       => 'php_generic',
			'Version'     => '$Revision: 5773 $',
			'Description' => 'Generates harmless padding for PHP scripts',
			'Author'      => 'hdm',
			'License'     => MSF_LICENSE,
			'Arch'        => ARCH_PHP)
	end

	# Generate valid PHP code up to the requested length
	def generate_sled(length, opts = {})
		# Default to just spaces for now
		" " * length
	end

end