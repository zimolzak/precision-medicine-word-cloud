#!/usr/bin/perl -w
# usage: ./end_s.pl precision\ defs.txt | sort | uniq > s_words.txt
use strict;
while(<>){
    tr/A-Z/a-z/;
    my @words = split(/ /);
    foreach my $x (@words) {
	print "$x\n" if $x =~ /s$/;
    }
}
