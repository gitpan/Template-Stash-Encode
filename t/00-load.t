#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Template::Stash::Encode' );
}

diag( "Testing Template::Stash::Encode $Template::Stash::Encode::VERSION, Perl $], $^X" );
