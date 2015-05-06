package Tgif::RandomTwitterWeek;
use base qw(Tgif::Base);
use Tgif::Config;
use strict;
use warnings;
use utf8;
use Encode;

# 1:mon, 2:tue 3:wed 4:thu 5:fri 6:sat 7:sun
sub run {
    my ($self, $options) = @_;
    my $week = @$options[0];
    die "nothing week parameter" unless ($week);
    my $sentence = Tgif::Config->get('random_twitter_week')->{$week};
    my $length = @$sentence;

    $sentence = decode_utf8(@$sentence[int(rand($length))]);
    my $word = $self->get_random_word;
    my $image_url = $self->get_image_url($word);

    # twitter sentence
    my $twitter_sentence = sprintf($sentence, $word);
    $twitter_sentence = $twitter_sentence . " " . $image_url if (Tgif::Config->get('link')->{to_image});

    $self->update($twitter_sentence);
}

1;
