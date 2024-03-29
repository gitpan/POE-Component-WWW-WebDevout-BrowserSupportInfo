use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::WWW::WebDevout::BrowserSupportInfo',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/WWW/WebDevout/BrowserSupportInfo.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                               => 1.04,
        'POE'                                => 0.9999,
        'POE::Wheel::Run'                    => 1.2179,
        'POE::Filter::Reference'             => 1.2187,
        'POE::Filter::Line'                  => 1.1920,
        'WWW::WebDevout::BrowserSupportInfo' => 0.01,
        'perl' => '5.006',
    },
    configure_requires => { 'Module::Build' => 0 },
    add_to_cleanup      => [ 'POE-Component-WWW-WebDevout-BrowserSupportInfo-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
