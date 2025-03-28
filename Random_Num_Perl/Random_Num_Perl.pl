#!/usr/bin/perl
#
#This script selects a random number between 1 and 100
#and guides the user towards identifying that number
#
use strict;
use warnings;

my $range = 100;
my $min = 1;

my $randnum = int(rand($range)) + $min;
 
my $var;

my $rg = 0;

my $qt = ' ';

rand_guess();

sub rand_guess {

print "\nGuess the random number between 1-100: \n";
print "To exit or quit enter 'quit', 'exit' or 'bye' \n";
chomp ( my $var = <STDIN> );

  if ( $var =~ /^[+-]?\d+$/ ){
	$rg = $var;
        
  	rg_gauge();
 	}

        else {
        $qt = $var;
	
	rg_exit();
	}


}

sub rg_gauge {


		if ( $rg == $randnum ){
 
		print $rg . " is the random number.\n";

		}


		elsif ( $rg < $randnum ){
	
			print "\nThe random number is higher than your entry. \n \n"; 
			rand_guess();	
		}

		elsif ( $rg > $randnum ){

			print "\nThe random number is lower than your entry. \n \n";
			rand_guess();
		}

		
	}

sub rg_exit {

 if (( $qt eq 'quit' ) || ( $qt eq 'bye' ) || ( $qt eq 'exit' )) {

			print "\n Goodbye \n";

  }

 else {
 	rand_guess();
 }

}
