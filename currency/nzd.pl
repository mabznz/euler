#!/usr/bin/perl -w
#

use Moose;
use LWP::UserAgent;

use strict;
use warnings;
use Carp;
use Data::Dumper;
use JSON::Parse 'parse_json';

eval
{
    configure();
    main();
};
if ($@)
{
    croak("Error: $@\n");
}

#----------------------------------------------------------------------------------------------------------------------
# main
#----------------------------------------------------------------------------------------------------------------------
#
sub main
{
    
}

sub configure
{
    my $api_id = "4c9895e4033c4f9a8acf844f0db71f1f";
    my $url = "https://openexchangerates.org/api/latest.json?app_id=$api_id&callback=done";

    my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 1 });
    $ua->add_handler(response_done => \&done);
    $ua->get($url);
    print "URL=$url\n";
}

sub done
{
    my ($res, $ua, $h) = @_;
    if ($res->is_success())
    {
        my $data = parse_json($res->content);
        print Dumper($data);
    }
    else
    {
        croak("Error calling api: " . $res->status_line);
    }
}
