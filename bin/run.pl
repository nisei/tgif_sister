#!/usr/bin/perl
use strict;
use warnings;
use FindBin;

BEGIN {
    my $lib_path = "$FindBin::Bin/../lib";
    unshift @INC, $lib_path;
}

use Tgif;

my $tgif = Tgif->new;
my $cmd = $ARGV[0];

$tgif->usage unless $cmd;
my $cmd_list = $tgif->get_command_list;

my $options;
my $count = 0;
for my $opt (@ARGV) {
    push (@$options, $opt) if ($count);
    $count++;
}

for my $list (@$cmd_list) {
    if ($cmd eq $list) {
        my $package_name = $tgif->package_name . "::" . $tgif->convert_command_rev($list);
        eval "use $package_name;";
        $package_name->run($options);
    }
}

1;
