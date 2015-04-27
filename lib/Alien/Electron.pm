package Alien::Electron;

our $VERSION = '0.100';

use File::ShareDir;

our $electron_binary;

if ($^O =~ /darwin/i) {
  $electron_binary = File::ShareDir::dist_dir('Alien-Electron') . "/Electron.app/Contents/MacOS/Electron";
} else {
  $electron_binary = File::ShareDir::dist_dir('Alien-Electron') . "/electron";
}

1;


__END__


=head1 NAME

Alien::Electron - Download and install the electron GUI framework

=head1 DESCRIPTION

This package will download a zip file containing github's L<Electron GUI framework|https://github.com/atom/electron> and will then install it into its private distribution share directory.

The location of the binary is stored in the C<$Alien::Electron::electron_binary> variable:

    $ perl -MAlien::Electron -E 'say $Alien::Electron::electron_binary'
    /usr/local/share/perl/5.18.2/auto/share/dist/Alien-Electron/electron

Note that you may want to use the L<Valence> module instead of accessing the C<electron> binary directly.

=head1 BUGS

Need to get windows support working.

=head1 SEE ALSO

L<Alien::Electron github repo|https://github.com/hoytech/Alien-Electron>

L<Valence> perl interface

L<Official Electron website|https://github.com/atom/electron>

L<Alien::Thrust>

=head1 AUTHOR

Doug Hoyte, C<< <doug@hcsw.org> >>

Justin Pacheco

=head1 COPYRIGHT & LICENSE

Copyright 2015 Doug Hoyte.

This module is licensed under the same terms as perl itself.

This perl distribution downloads compiled binaries of the Electron project which is copyright (c) 2014 GitHub Inc. and is licensed under the MIT license.

=cut
