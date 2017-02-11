#! /usr/bin/perl

# Multiples of 3 and 5

my $total = 0;
my $limit = 999;

foreach $x (1..$limit)
{
	if ( $x % 3 == 0 or $x % 5 == 0 )
	{
		$total += $x;
	}
}

print "Toal $total\n";
