package Tgif::Config;
use FindBin;
use utf8;

sub get {
    my ($self, $key) = @_;
    die "need config key" unless ($key);

    my $conf = $self->load_config;
    return $conf->{$key};
}

sub load_config {
    my $self = shift;
    my $file_path = "$FindBin::Bin/../etc/config.pl";
    my $conf = do($file_path) || {};
    die "could not found local config file:" . $file_path unless ($conf);

    return $conf;
}

1;
