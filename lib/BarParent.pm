package BarParent;
use parent 'Foo';
use strict;
use warnings;
use Data::Dumper;
use fields qw(release);
sub new {
    my $self = shift;
    unless ( ref $self ) {
        $self = fields::new($self);
        $self->{release} = '12345';
    }
    $self->SUPER::new();
    return $self;
}
sub doBar {
    my $self = shift;
    print Dumper $self;
}
1;
