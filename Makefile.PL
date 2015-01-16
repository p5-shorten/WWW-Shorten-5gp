use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  "ABSTRACT" => "Tiny 5.gp urls! How tiny is that?",
  "AUTHOR" => 'Michiel Beijen <michiel.beijen@gmail.com>',
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
  },
  "MIN_PERL_VERSION" => "5.8.1",
  "DISTNAME" => "WWW-Shorten-5gp",
  "LICENSE" => "perl",
  "NAME" => "WWW::Shorten::5gp",
  "PREREQ_PM" => {
    "WWW::Shorten" => 3,
    "JSON::PP" => 0,
  },
  "TEST_REQUIRES" => {
    "Test::More"  => "0.88",
    "LWP::Online" => 1,
  },
  "VERSION_FROM" => "lib/WWW/Shorten/5gp.pm",
  "test" => {
    "TESTS" => "t/*.t"
  },
  META_MERGE => {
    resources => {
      repository => 'https://github.com/mbeijen/WWW-Shorten-5gp',
      bugtracker => 'https://github.com/mbeijen/WWW-Shorten-5gp/issues',
    },
  },
);
