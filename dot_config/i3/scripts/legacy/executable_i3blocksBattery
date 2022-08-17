#!/usr/bin/perl
use strict;
use warnings;
use utf8;

my $acpi;
my $status;
my $percent;
my $ac_adapt;
my $full_text;
my $short_text;
my $bat_number = $ENV{BAT_NUMBER} || 0;
my $label = $ENV{LABEL} || "";

open (ACPI, "acpi -b 2>/dev/null| grep 'Battery $bat_number' |") or die;
$acpi = <ACPI>;
close(ACPI);

if (not defined($acpi)) {
    exit(0);
}
elsif ($acpi !~ /: ([\w\s]+), (\d+)%/) {
	die "$acpi\n";
}

$status = $1;
$percent = $2;
if ($percent < 15) {
	$label .= " ";
} elsif ($percent < 40) {
	$label .= " ";
}elsif($percent < 60){
	$label .= " ";
}elsif($percent < 85){
	$label .= " ";
}else{
	$label .= " ";
}
$full_text = "$label$percent%";

if($status eq 'Charging'){
	print " $full_text\n";
	print " $short_text\n";
	print "#ffffff\n"
}else{
	print "$full_text\n";
	print "$short_text\n";
}

# consider color and urgent flag only on discharge
if ($status eq 'Discharging') {

	if ($percent < 15) {
		print "#FF0000\n";
	} elsif ($percent < 40) {
		print "#FFAE00\n";
	} elsif ($percent < 60) {
		print "#FFF600\n";
	} elsif ($percent < 85) {
		print "#A8FF00\n";
	} else {
		print "#18d100\n";
	}

	if ($percent < 5) {
		exit(33);
	}
}
exit(0);