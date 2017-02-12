package SimpleDotCom;

use Moose;

has 'locationCells' => (
    is => 'rw',
    isa => 'ArrayRef',
);

has 'numOfHits' => (
    is => 'rw',
    isa => 'Int',
    default => 0,
);

sub checkYourself
{
    my $self = shift;
    my $guess = shift;
    foreach my $cell (@{$self->locationCells})
    {
        if ($guess == $cell)
        {
            $self->numOfHits($self->numOfHits() + 1);
            print "Hit\n";
            last;
        }
        # print "In checkYourself cells = $cells\n";
    }
}

1;
