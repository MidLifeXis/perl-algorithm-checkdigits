package MyPluginLib;

use strict;
use warnings;

use Algorithm::CheckDigits();

Algorithm::CheckDigits::plug_in(
    'plugin_test_a_a' => 'MyPluginLibA',
    'plugin_test_a_b' => 'MyPluginLibA',
    'plugin_test_b_a' => 'MyPluginLibB',
    );

1;

