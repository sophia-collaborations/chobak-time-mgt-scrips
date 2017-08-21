package me::centravals;
use strict;
use argola;

my $contos;

sub optos {
  $contos = {};
  $contos->{'longmem'} = 'x';
  $contos->{'specfile'} = 'x';
  &argola::setoptp('-lm',\&lcf__save_f,'longmem');
  &argola::setoptp('-sp',\&lcf__save_f,'specfile');
}

sub optok {
  if ( $contos->{'specfile'} eq 'x' )
  {
    die "\nUse -sp option to specify instructions file.\n\n";
  }
  if ( $contos->{'longmem'} eq 'x' )
  {
    die "\nUse -lm option to specify basename of longterm memory files.\n\n";
  }
}


sub lcf__save_f {
  $contos->{$_[0]} = &argola::getrg();
}

sub retval {
  return $contos->{$_[0]};
}

sub notex {
  return ( $contos->{$_[0]} ne 'x' );
}

1;

