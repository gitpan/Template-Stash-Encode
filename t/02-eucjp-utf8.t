#!perl -T

use Test::More tests => 1;

use Template;
use Template::Stash::Encode;

{
	my $tt = Template->new(
		STASH => Template::Stash::Encode->new(icode => 'euc-jp', ocode => 'utf8')
	);
	
	my $tmpl = '[% var %]';
	$tt->process(\$tmpl, { var => "\xC1\xFD\xC5\xC4\x5A\x49\x47\x4F\x52\x4F\xA5\xA5" }, \my $result);
	
	is($result, "\xE5\xA2\x97\xE7\x94\xB0\x5A\x49\x47\x4F\x52\x4F\xE3\x82\xA5");
}