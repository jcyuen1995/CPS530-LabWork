#!/usr/bin/perl
use CGI':standard';
use strict;
print "Content-type: text/html\n\n";


print '<html>';
print '<head>';
print '<meta charset="UTF-8">';
print '<title>';
print 'Lab 4';
print '</title>';
print '<link rel="stylesheet" type="text/css"
			href="https://j25yuen.herokuapp.com/stylesheet.css" />';
print '</head>';
print '<body>';
print '<h1 class = "signature">';
print 'This is my first Perl program';
print '</h1>';
print '</body>';

my $first_name = param('first_name');
my $last_name = param('last_name');
my $gender = param('gender');
my $OS = param('OS');

print '<h1>Thanks for your submission</h1><br>';

print '<p class = "myclass"> ';
print 'This is your submission <br>';
print "Hello, <u>$first_name $last_name</u>, you are <u>$gender</u>. You are running on a <u>$OS</u><br>";
print '</p>';
print '</html>';
