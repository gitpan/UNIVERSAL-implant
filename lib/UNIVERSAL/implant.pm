package UNIVERSAL::implant;
our $VERSION = '0.01_01';

# ABSTRACT: UNIVERSAL Class::Implant

use 5.008008;
use strict;
use warnings;

BEGIN { 
  require UNIVERSAL;
  require Class::Implant;
}

package UNIVERSAL;
our $VERSION = '0.01_01';


sub implant {
  my $options = ( ref($_[-1]) eq "HASH" ? pop(@_) : {} );
  my ($module, @class) = @_;
  $options->{into} = $module;
  Class::Implant::implant(@class, $options);
}

1;


__END__
=head1 NAME

UNIVERSAL::implant - UNIVERSAL Class::Implant

=head1 VERSION

version 0.01_01

=head1 SYNOPSIS

  use UNIVERSAL::implant;
  # require only once

=head1 DESCRIPTION

=head1 AUTHOR

  shelling <shelling@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2009 by shelling <shelling@cpan.org>.

This is free software, licensed under:

  The MIT (X11) License

