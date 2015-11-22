package Script;
use BarBase;
use BarParent;
use Data::Dumper;
use strict;
use warnings;
use fields qw();
sub new {
    my $self = shift;
    unless ( ref $self ) {
        $self = fields::new($self);
    }
    return $self;
}
sub do {
    my $self = shift;
    my $barBase = BarBase->new();
    print Dumper $barBase;
    my $barParent = BarParent->new();
    print Dumper $barParent;
}
1;
