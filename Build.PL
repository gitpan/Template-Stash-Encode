use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name => 'Template::Stash::Encode',
	license => 'perl',
	dist_author => 'Toru Yamaguchi <zigorou@cpan.org>',
	dist_version_from => 'lib/Template/Stash/Encode.pm',
	build_requires => {
		'Test::More' => 0,
		'Template' => 0,
		'Encode' => 0
	},
	add_to_cleanup => [
		'Template-Stash-Encode-*',
		'Build',
		'*.bak',
		'_build'
	],
);

$builder->create_build_script();
