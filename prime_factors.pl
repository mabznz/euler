#!/usr/bin/perl -w

use strict;
use warnings;

# get prime numbers
my @primes = ();
for my $number (1..100)
{
	# times number is divided equally (we always have 2, by 1 and itself)
	my $amount = 0;
	
	for my $divide_by (1..100)
	{
		if (($number % $divide_by) == 0)
		{
			$amount++;
		}
		last if ($amount > 2); # short circuit		
	}
	
	push @primes, $number if ($amount == 2);
}

print "Primes @primes";