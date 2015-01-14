use Test::More;

use_ok WWW::Shorten::5gp;

my $url = 'https://huntingbears.nl/';
my $return = makeashorterlink($url);
my $prefix = 'http://5.gp/';

ok ( $return, 'made a shorter link');
my ($code) = $return =~ /(\w+)$/;
like ( $return, qr[^${prefix}\w+$], 'make it shorter');
is ( makealongerlink($prefix.$code), $url, 'make it longer');
is ( makealongerlink($code), $url, 'make it longer by Id',);

eval { &makeashorterlink() };
ok($@, 'makeashorterlink fails with no args');
eval { &makealongerlink() };
ok($@, 'makealongerlink fails with no args');

done_testing;
