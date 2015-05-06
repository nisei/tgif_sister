package Tgif;
use strict;
use warnings;
use utf8;
use FindBin;

our $VERSION = '0.1';

sub new {
    my ($class, @args) = @_;
    bless(\@args, $class);
}

sub usage {
    my $self = shift;
    warn "USAGE!!";
    exit;
}

sub package_name {
    my $self = shift;
    return __PACKAGE__;
}

sub get_command_list {
    my $self = shift;

    my $dir = "$FindBin::Bin/../lib/Tgif";
    my $commands;
    opendir my $dh, $dir or die "$dir:$!";
    while (my $name = readdir $dh) {
        # exclude Base.pm and Config.pm and . ..
        next if $name =~ /^\.{1,2}$/;
        next if $name eq "Base.pm" || $name eq "Config.pm";
        # make command by file name (pm extension)
        if ($name =~ /\.pm$/) {
            $name =~ s/\.pm//g;
            push (@$commands, $self->convert_command($name));
        }
    }
    closedir $dh;
    return $commands;
}

sub convert_command {
    my ($self, $cmd) = @_;

    my $result;
    my $count = 0;
    for my $char (split //, $cmd) {
        if ($char =~ /[A-Z]/) {
            $result = $result . "_" if ($count);
            $char =~ tr/A-Z/a-z/;
        }
        $result = $result . $char;
        $count++;
    }
    return $result;
}

sub convert_command_rev {
    my ($self, $cmd) = @_;

    my $result;
    my $count = 0;
    my $after_hyphen = 0;
    for my $char (split //, $cmd) {
        $char =~ tr/a-z/A-Z/ if ($count == 0);
        if ($char eq "_") {
            $after_hyphen = 1;
            next;
        }
        if ($after_hyphen) {
            $after_hyphen = 0;
            $char =~ tr/a-z/A-Z/;
        };
        $result = $result . $char;
        $count++;
    }
    return $result;
}

1;
