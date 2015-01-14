use strict;
use warnings;
use Test::More;

plan skip_all => 'these tests are for release candidate testing'
    unless $ENV{RELEASE_TESTING};

eval "use Test::Pod::No404s";
if ( $@ ) {
  plan skip_all => 'Test::Pod::No404s required for testing POD';
} else {
  all_pod_files_ok();
}
