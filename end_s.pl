#!/usr/bin/perl -w
# usage: ./end_s.pl precision\ defs.txt | sort | uniq > s_words.txt
use strict;
while(<>){
    tr/A-Z/a-z/;
    s/[:,.;"()*]//g;
    s/&/and/g;
    s/-/ /g;
    s{/}{ }g;
    s/“//g; #tricky char
    s/”//g; #tricky char
    s/—/ /g; #tricky char
    my @words = split(/ /);
    foreach my $x (@words) {
	print "$x\n" if $x =~ /s$/;
    }
}
