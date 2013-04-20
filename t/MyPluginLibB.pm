package MyPluginLibB;

use 5.006;
use strict;
use warnings;

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    return bless({}, $class);
}

sub is_valid { 1 }
sub complete {
    my ($self, $number) = @_;
    return $number;
}
sub basenumber {
    my ($self, $number) = @_;
    return $number;
}
sub checkdigit { '' }

1;
