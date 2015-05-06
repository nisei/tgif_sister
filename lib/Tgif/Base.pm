package Tgif::Base;
use strict;
use warnings;
use utf8;
use JSON;
use Encode;
use FindBin;
use Tgif::Config;
use Net::Twitter;
use LWP::Simple;

my $ua = LWP::UserAgent->new;
my $config = Tgif::Config->get('twitter')->{keys};
my $nt = Net::Twitter->new(
   traits => ['API::RESTv1_1'],
   consumer_key => $config->{consumer_key},
   consumer_secret => $config->{consumer_secret},
   access_token => $config->{token},
   access_token_secret => $config->{token_secret},
);

sub update {
    my ($self, $data) = @_;
    if (Tgif::Config->get('maintenance')) {
        my $msg = ('maintenance mode on twitter sentence: ' . $data);
        printf encode_utf8($msg);
    } else {
        my $result = $nt->update($data);
        return $result;
    }
}

sub get_random_word {
    my $self = shift;
    my $category = Tgif::Config->get('search_category');
    my $length = @$category;

    my $category_data = $self->get_category_from_wiki(@$category[int(rand($length))]);
    $length = @$category_data;

    my $word;
    for (0 .. $length) {
        $word = @$category_data[int(rand($length))];
        last if ($word->{ns} == 0);
    }
    return $word->{title};
}

sub get_category_from_wiki {
    my ($self, $category) = @_;
    my $wiki = Tgif::Config->get('wikipedia');
    my $res = $ua->get($wiki->{base_url} . $wiki->{category} . $category);
    die 'wikipedia search failed status: ' . $res->status_line unless ($res->is_success);

    $res = decode_json($res->content);
    return $res->{query}->{categorymembers};
}

sub get_image_url {
    my ($self, $word) = @_;
    die 'could not found image word;' unless ($word);
    my $google = Tgif::Config->get('google');
    my $res = $ua->get($google->{base_url} . $google->{search_image} . $word);
    die 'image search failed status: ' . $res->status_line unless ($res->is_success);

    $res = decode_json($res->content);
    my $result = $res->{responseData}->{results};
    my $length = @$result;

    return @$result[int(rand($length))]->{url};;
}

1;
