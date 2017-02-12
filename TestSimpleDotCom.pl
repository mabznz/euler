#!/usr/bin/perl
#

use SimpleDotCom;
use Data::Dumper;
my $board = SimpleDotCom->new('locationCells' => [0,2,3,4,0,0]);

print Dumper($board);
#foreach my $x (@{$board->{locationCells}})
#{
#    print "$x\n";
#}

#$board->numOfHits(4);
#print $board->numOfHits();

$board->checkYourself(2);
