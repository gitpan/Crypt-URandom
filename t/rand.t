use Test::More tests => 2;
use Crypt::URandom();

ok(length(Crypt::URandom::urandom(500)) == 500, 'Crypt::URandom::urandom(500) called successfully');
ok(length(Crypt::URandom::urandom(50)) == 50, 'Crypt::URandom::urandom(50) called successfully');
