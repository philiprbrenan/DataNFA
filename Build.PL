use v5.26;
use Module::Build;

my $b = Module::Build->new
 (module_name   => 'Data::NFA',
  dist_author   => 'philiprbrenan@gmail.com',
  dist_abstract => 'Non deterministic finite state machine from regular expression.',
  license       => 'perl',
  requires      =>
   {'Carp'             =>0,
    'Data::Dump'       =>0,
    'Data::Table::Text'              => 20201029,
    'Test2::API'       =>0,
    'Test::More'       =>0,
   },
  configure_requires => {'Module::Build' => 0.4224},
  create_readme =>  0,
  perl          => '5.26.0',
  meta_merge =>
   {resources =>
     {repository => 'https://github.com/philiprbrenan/DataNFA',
      bugtracker => 'https://github.com/philiprbrenan/DataNFA/issues'
     }
   },
 );

$b->create_build_script();
