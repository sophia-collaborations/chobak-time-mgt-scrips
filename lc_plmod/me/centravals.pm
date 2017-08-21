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

