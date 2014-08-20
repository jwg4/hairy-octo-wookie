#!/usr/bin/perl

use strict;
use warnings;
use Modern::Perl;

use Net::Twitter;

use lib "/home/pi/secrets/lib";
use Twitter::Keys;

my $nt = Net::Twitter->new(
    traits              => [qw/API::REST RetryOnError/],
    #consumer_key        => $api_key,
    #consumer_secret     => $api_secret,
    access_token        => $access_key,
    access_token_secret => $access_secret,
    ssl                 => 1,
    );

my $statuses = $nt->friends_timeline({});
for my $status ( @$statuses ) {
    print "$status->{created_at} <$status->{user}{screen_name}> $status->{text}\n";
}
