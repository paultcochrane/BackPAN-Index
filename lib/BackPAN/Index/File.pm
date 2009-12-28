package BackPAN::Index::File;

use strict;
use warnings;

use File::Basename qw(basename);
use CLASS;

sub url {
    my $self = shift;
    return "http://backpan.cpan.org/" . $self->prefix;
}

sub filename {
    my $self = shift;
    return basename $self->prefix;
}

1;

__END__

=head1 NAME

BackPAN::Index::File - Represent a file on BackPAN

=head1 SYNOPSIS

  my $b = BackPAN::Index->new();
  my $file = $b->file("authors/id/L/LB/LBROCARD/Acme-Colour-0.16.tar.gz");
  print "  Date: " . $file->date . "\n";
  print "Prefix: " . $file->prefix . "\n";
  print "  Size: " . $file->size . "\n";
  print "   URL: " . $file->url . "\n";

=head1 DESCRIPTION

BackPAN::Index::File objects represent files on BackPAN.  It may
represent a release, a readme or meta file or just some random stuff
on BackPAN.

=head1 METHODS

=head2 date

    my $date = $file->date;

Returns the upload date of the file, in UNIX epoch seconds.

=head2 prefix

    my $prefix = $file->prefix;

Returns the full path to the file on CPAN.

=head2 size

    my $size = $file->size;

Returns the size of the file in bytes.

=head2 url

    my $url = $file->url;

Returns a URL to the file on a BackPAN mirror.

=head2 filename

    my $filename = $file->filename;

Returns the filename part of the prefix.

=head1 AUTHOR

Leon Brocard <acme@astray.com>

=head1 COPYRIGHT

Copyright (C) 2005-2009, Leon Brocard

This module is free software; you can redistribute it or modify it under
the same terms as Perl itself.

=head1 SEE ALSO

L<BackPAN::Index>, L<BackPAN::Index::Release>