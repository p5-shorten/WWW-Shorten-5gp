use Test::More;
BEGIN {
    plan skip_all => 'these tests are for release candidate testing'
        unless $ENV{RELEASE_TESTING};
    eval "use Test::Kwalitee";
    plan skip_all => "Test::Kwalitee required for testing Kwalitee" if $@;
}
