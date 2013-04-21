use Test;

use lib ( '.', 't' );

use Algorithm::CheckDigits;

my %tests;
BEGIN {
    %tests = (
        'plugin_test_a_a' => 'MyPluginLibA',
        'plugin_test_A_b' => 'MyPluginLibA',
        'plugin_test_b_a' => 'MyPluginLibB',
    );
    plan(tests => scalar(keys %tests) + 1);
}
Algorithm::CheckDigits::plug_in( %tests );

while ( my ($name, $class) = each %tests ) {
    my $cd = CheckDigits($name);
    my $isa = $cd->isa( $class );
    ok( $isa, 1, "$class ISA $name" );
}

{
    my $name  = 'plugin_test_A_b';
    my $class = $tests{ $name };

    my $cd = CheckDigits(uc($name));
    my $isa = $cd->isa( $class );
    ok( $isa, 1, "$class ISA $name" );
}

