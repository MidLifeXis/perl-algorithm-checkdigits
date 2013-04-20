use Test;

use lib ( '.', 't' );

BEGIN {
	plan(tests => 4);
};
use Algorithm::CheckDigits;
use MyPluginLib;

my %tests = (
    'plugin_test_a_a' => 'MyPluginLibA',
    'plugin_test_a_b' => 'MyPluginLibA',
    'plugin_test_b_a' => 'MyPluginLibB',
    'verhoeff'        => 'Algorithm::CheckDigits::MXX_006',
    );

while ( my ($name, $class) = each %tests ) {
    my $cd = CheckDigits($name);
    my $isa = $cd->isa( $class );
    ok( $isa );
}
