#!/usr/local/bin/perl
#
# Filename: replaceFiles.pl
# Description: replace all occurences of a string in a file by another string
# Developer: Nicolas CHEN

if ($#ARGV != 3) {
    print "usage: *.pl oldfile newfile oldstring newstring\n";
    exit;
}

$oldfile = $ARGV[0];
$newfile = $ARGV[1];
$old = $ARGV[2];
$new = $ARGV[3];

open(my $of, '<', $oldfile) or die "Can't open $oldfile: $!";
open(my $nf, '>', $newfile) or die "Can't open $newfile: $!";

# read in each line of the file
while (my $line = <$of>) {
    $line =~ s/$old/$new/;
    print $nf $line;
}

close($of);
close($nf);

print "COMPLETED"