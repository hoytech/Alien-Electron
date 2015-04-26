use Test::More tests => 2;

use strict;

use Alien::Electron;

diag("Electron binary: $Alien::Electron::electron_binary");

ok(-e $Alien::Electron::electron_binary, 'binary file exists');
ok(-x $Alien::Electron::electron_binary, 'binary file is executable');
