#!/usr/bin/perl -w
while(<>){
    my @regular_plural =
	qw/genes treatments tests patients factors targets cancers /;
    
    s/precision//ig;
    s/medicine//ig;
    s/treatments/treatment/ig;
    print;
}
