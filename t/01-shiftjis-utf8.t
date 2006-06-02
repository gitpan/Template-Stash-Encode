#!perl -T

use Test::More tests => 1;

use Template;
use Template::Stash::Encode;

{
	my $tt = Template->new(
		STASH => Template::Stash::Encode->new(icode => 'shiftjis', ocode => 'utf8')
	);
	
	my $tmpl = '[% var %]';
	$tt->process(\$tmpl, { var => "\x91\x9D\x93\x63\x5A\x49\x47\x4F\x52\x4F\x83\x44" }, \my $result);
	
	is($result, "\xE5\xA2\x97\xE7\x94\xB0\x5A\x49\x47\x4F\x52\x4F\xE3\x82\xA5");
}