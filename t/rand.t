use Test::More tests => 3;
use Crypt::URandom();

ok(length(Crypt::URandom::urandom(500)) == 500, 'Crypt::URandom::urandom(500) called successfully');
ok(length(Crypt::URandom::urandom(50)) == 50, 'Crypt::URandom::urandom(50) called successfully');
ok(not(utf8::is_utf8(Crypt::URandom::urandom(10))), 'Crypt::Urandom::urandom returns non utf8 data');
