#!/usr/bin/perl -w
my @regular_plural = file2array("curated_s_words.txt");
while(<>){
    s/precision//ig;
    s/medicine//ig;
    s/therapies/therapy/ig;
    s/technologies/technology/ig;
    foreach my $plural (@regular_plural) {
	(my $singular = $plural) =~ s/s$//;
	s/$plural/$singular/;
    }
    # therapy technology
    print;
}

sub file2array {
    my $filename = shift;
    open my $fh, "< $filename" or die "can't open $filename: $!";
    local $/; # slurp
    my $content = <$fh>;
    close $fh;
    return split("\n", $content);
}
