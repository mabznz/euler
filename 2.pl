#!/usr/bin/perl

# There are two streams
my $first = 1;
my $second = 1;

my $limit = 4000000;

my $total = 0;

# make sure our stream does not exceed limit
while ($second < $limit)
{
	print "$first $second\n";

   # get the next term in the stream of f numbers
	my $next_term = $first + $second;

	# add to total if that next term is even
	$total += $next_term if ($next_term % 2 == 0);
	print "NT $next_term\n";

	# the second stream becomes the first and the next terms becomes the second.
	$first = $second;
	$second = $next_term;
}
print "Total = $total";
