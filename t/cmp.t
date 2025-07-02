#!/usr/bin/env perl

use strict;
use warnings;

use Test::Most;

use FindBin;
use lib "$FindBin::Bin/../lib";  # add the lib directory to @INC

use Date::Cmp;

cmp_ok(Date::Cmp::datecmp('30 SEP 1943', '4 AUG 1955'), '==', -1, 'before works');
cmp_ok(Date::Cmp::datecmp('BET 1830 AND 1832', '1830-02-06'), '==', 0, 'range works');

done_testing();
