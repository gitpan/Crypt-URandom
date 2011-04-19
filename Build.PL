use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Crypt::URandom',
    license             => 'perl',
    dist_author         => 'David Dick <ddick@cpan.org>',
    dist_version_from   => 'lib/Crypt/URandom.pm',
    requires => {
        'Test::More' => 0,
	'Carp'       => 0,
	'English'    => 0,
	($^O eq 'MSWin32') ? ( 'Win32::API' => 0 ) : ( 'FileHandle' => 0 ),
    },
    add_to_cleanup      => [ 'Crypt-URandom-*' ],
);

$builder->create_build_script();
