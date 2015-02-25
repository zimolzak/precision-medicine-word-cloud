#!/usr/bin/perl -w
use strict;
while(<>){
    my @words = split(/ /);
    foreach my $x (@words) {
	print "$x\n" if $x =~ /s$/;
    }
}
