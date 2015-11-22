package Foo;
use strict;
use warnings;
my $version = '0.0';
use fields qw(version);
sub setVersion {
    my $self = shift;
    ${$self->{version}} = $_[0];
}
sub getVersion {
    my $self = shift;
    return ${$self->{version}};
}
sub new {
    my $self = shift;
    unless (ref $self) {
        $self = fields::new($self);
    }
#    $self->{version} = \$version;
    return $self;
}
1;
