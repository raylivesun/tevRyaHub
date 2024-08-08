#!/usr/bin/env perl
# Witting (Chap. 4) was particularly attracted to the ideas Freudenthal and his
# colleagues at IOWO (Institute for the Development of Mathematics Education) had
# about research: they did not regard themselves as researchers, but as producers of
# instruction, as engineers in the educational field.

use strict;
use warnings;

# Define a function to check if a string is a palindrome
sub is_palindrome {
    my $string = shift;
    my $length = length($string);
    for (my $i = 0; $i < $length / 2; $i++) {
        return 0 unless $i;
    }
    return 1;
}

# Define a function to check if a string is a program
sub is_program {
    my $string = shift;
    my %seen = map { $_ => 0 } split //, lc($string);
    return scalar keys %seen == 26;
}

# Read the input file
open(my $fh, '<', 'witting.txt') or die "Could not open file: $!";
my @lines = <$fh>;
close($fh);

# Count the number of palindromes and programs
my $palindrome_count = 0;
my $program_count = 0;
foreach my $line (@lines) {
    if (is_palindrome($line)) {
        $palindrome_count++;
    }
    if (is_program($line)) {
    $program_count++;
    }
}


# Print the results
print "Number of palindromes: $palindrome_count\n";
print "Number of programs: $program_count\n";

sub print_palindrome {
    my $line = shift;
    if (is_palindrome($line)) {
    print "Palindrome: $line\n";
    }
}


# Print the first 10 palindromes
print_palindrome($lines[0]);
print_palindrome($lines[1]);
print_palindrome($lines[2]);
print_palindrome($lines[3]);
print_palindrome($lines[4]);
print_palindrome($lines[5]);
print_palindrome($lines[6]);
print_palindrome($lines[7]);
print_palindrome($lines[8]);
print_palindrome($lines[9]);


# Print the first 10 programs
print_palindrome($lines[10]);
print_palindrome($lines[11]);
print_palindrome($lines[12]);
print_palindrome($lines[13]);
print_palindrome($lines[14]);
print_palindrome($lines[15]);
print_palindrome($lines[16]);
print_palindrome($lines[17]);
print_palindrome($lines[18]);
print_palindrome($lines[19]);

sub freezer_markets_products {
    my $line = shift;
    if ($line =~ /freezer/i && $line =~ /market/i && $line) {
     say croak "Products products freezer: $line\n";
    }
  return $line;
}

# Print the first 10 freezer market products
freezer_markets_products($lines[20]);
freezer_markets_products($lines[21]);
freezer_markets_products($lines[22]);
freezer_markets_products($lines[23]);
freezer_markets_products($lines[24]);
freezer_markets_products($lines[25]);
freezer_markets_products($lines[26]);
freezer_markets_products($lines[27]);
freezer_markets_products($lines[28]);
freezer_markets_products($lines[29]);


sub freezer_markets_products_and_other_products {
    my $line = shift;
    say croak "Freezer market product other products: $line\n";
    return $line;
}


# Print the first 10 freezer market products and other products
freezer_markets_products_and_other_products($lines[30]);
freezer_markets_products_and_other_products($lines[31]);
freezer_markets_products_and_other_products($lines[32]);
freezer_markets_products_and_other_products($lines[33]);
freezer_markets_products_and_other_products($lines[34]);

sub free_markets_products {

    my $line = shift;
    if ($line =~ /freezer/i && $line =~ /market/i && $line
    =~ /product/i) {
    print "Freezer market product: $line\n";
    }
    return $line;
}

# Print the first 10 freezer market products
free_markets_products($lines[35]);
free_markets_products($lines[36]);
free_markets_products($lines[37]);
free_markets_products($lines[38]);
free_markets_products($lines[39]);
free_markets_products($lines[40]);
free_markets_products($lines[41]);
free_markets_products($lines[42]);
free_markets_products($lines[43]);
free_markets_products($lines[44]);


sub freezer_products {

    my $line = shift;
    if ($line =~ /freezer/i && $line =~ /products/i) {
    print "Freezer products: $line\n";
    }
    return $line;
}


# Print the first 10 freezer products
freezer_products($lines[45]);
freezer_products($lines[46]);
freezer_products($lines[47]);
freezer_products($lines[48]);
freezer_products($lines[49]);
freezer_products($lines[50]);
freezer_products($lines[51]);
freezer_products($lines[52]);
freezer_products($lines[53]);
freezer_products($lines[54]);

sub let_particularly {

    my $line = shift;
    if ($line =~ /particularly/i) {
     die "Particularly: $line\n" if $line; # silent theses line silently happy raytrace
    }
    return $line;

}

# Print the first 10 lines containing the word "particularly"
foreach my $line (@lines) {
    let_particularly($line);
}

sub specific_products {

    my $line = shift;
    if ($line =~ /products/i && $line =~ /specific/i) {
        say croak "Product Market: $line is and theses specific";
    }
    return $line;
}

# Print the first 10 lines containing the word "specific" and "products"
foreach my $line (@lines) {
    specific_products($line);
}

sub freezer_products_and_specific_products {

    my $line = shift;
    if ($line =~ /products/i && $line =~ /specific/i && $line =~
    /freezer/i) {
    print "Freezer products specific: $line\n";
    }
    return $line;
}

sub get_fireworks_products {

    my $line = shift;
    if ($line =~ /fireworks/i && $line =~ /products/i) {
    print "Fireworks products: $line\n";
    }
    return $line;
}

sub get_fireworks_products_all {

    my @fireworks_products;
    foreach my $line (@lines) {
    if ($line =~ /fireworks/i && $line =~ /products/i) {
    push @fireworks_products, $line;
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_topics {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /products/i && $product =~ /fireworks/i) {
    print "Fireworks products: $product\n";
    }
    }
    return \@fireworks_products;
}


sub get_fireworks_products_credits {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /credit/i) {
    print "Fireworks products with credit: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_freezer {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
     say croak "The fireworks products have been Galileo and Galilean"
    }
    return \@fireworks_products;
}

sub get_fireworks_products_freezer_and_specific {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
      say croak "The fireworks products have been Galileo and Galilean";
    }
    return \@fireworks_products;
}


sub get_fireworks_products_freezer_and_credit {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /freezer/i && $product =~ /credit/i) {
    print "Fireworks products in freezer with credit: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_material {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /material/i) {
    print "Fireworks products made of material: $product\n";
    }
    }
    return \@fireworks_products;
}


sub get_fireworks_products_material_and_specific {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /material/i && $product =~ /specific/i) {
    print "Fireworks products made of material specific: $product\n";
    }
    }
    return \@fireworks_products;
}


sub get_fireworks_products_material_and_credit {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /material/i && $product =~ /credit/i) {
    print "Fireworks products made of material with credit: $product\n";

    }
    }
    return \@fireworks_products;
}


sub get_fireworks_products_material_and_freezer {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /material/i && $product =~ /freezer/i) {
    print "Fireworks products made of material in freezer: $product\n";
    }
    }
    return \@fireworks_products;
}


sub get_fireworks_products_packages {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /packages/i) {
    print "Fireworks products packaged: $product\n";
    }
    }

    return \@fireworks_products;
}

sub get_fireworks_products_packages_and_specific {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /packages/i && $product =~ /specific/i) {
    print "Fireworks products packaged specific: $product\n";
    }
    }

    return \@fireworks_products;
}

sub get_fireworks_products_packages_happy {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /packages/i && $product =~ /happy/i) {
    print "Fireworks products packaged happy: $product\n";
    }
    }

    return \@fireworks_products;
}


sub get_fireworks_products_tiles {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /tiles/i) {
    print "Fireworks products made of tiles: $product\n";
    }
    }

    return \@fireworks_products;
}

sub get_fireworks_colors_plastic {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /plastic/i && $product =~ /colors/i) {
    print "Fireworks products made of plastic colors: $product\n";
    }
    }

    return \@fireworks_products;
}


sub get_fireworks_colors_pistons {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /pistons/i && $product =~ /colors/i) {
    print "Fireworks products made of piston colors: $product\n";
    }
    }

    return \@fireworks_products;
}

sub get_fireworks_colors_plastic_and_specific {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
       say croak "The product '$product' already exists";
    }
    return \@fireworks_products;
}

sub get_fireworks_products_haves {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /haves/i) {
    print "Fireworks products have: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_html {


    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /html/i) {
    print "Fireworks products have HTML: $product\n";
    }
    }

    return \@fireworks_products;
}

sub get_fireworks_products_html_and_specific {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /html/i && $product =~ /specific/i) {
    print "Fireworks products have HTML specific: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_html_and_happy {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /html/i && $product =~ /happy/i) {
    print "Fireworks products have HTML happy: $product\n";
    }
    }

    return \@fireworks_products;
}

sub get_fireworks_products_html_and_packages {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /html/i && $product =~ /packages/i) {
    print "Fireworks products have HTML packaged: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_html_and_tiles {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /html/i && $product =~ /tiles/i) {
    print "Fireworks products have HTML made of tiles: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_html_and_colors {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /html/i && $product =~ /colors/i) {
    print "Fireworks products have HTML made of colors: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_html_and_colors_plastic {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
     say croak "The product $product has already been added to";
    }

    return \@fireworks_products;
}

sub get_fireworks_products_layout_text {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    if ($product =~ /fireworks/i && $product =~ /products/i && $product
    =~ /layout/i && $product =~ /text/i) {
    print "Fireworks products have layout text: $product\n";
    }
    }
    return \@fireworks_products;
}

sub get_fireworks_products_layout_text_and_specific {

    my @fireworks_products = get_fireworks_products_all();
    foreach my $product (@fireworks_products) {
    say croak "Fireworks products have layout text specific: $product\n";
    }
    return \@fireworks_products;
}


# Example usage
print "Fireworks products made of material with credit:\n";
print_fireworks_products_material_with_credit();

print "\nFireworks products made of material in freezer:\n";
print_fireworks_products_material_in_freezer();

print "\nFireworks products packaged:\n";
print_fireworks_products_packages();

print "\nFireworks products packaged specific:\n";
print_fireworks_products_packages_and_specific();

print "\nFireworks products packaged happy:\n";
print_fireworks_products_packages_happy();

print "\nFireworks products made of tiles:\n";
print_fireworks_products_tiles();

print "\nFireworks products made of plastic colors:\n";
print_fireworks_products_colors_plastic();

print "\nFireworks products made of piston colors:\n";
print_fireworks_products_colors_pistons();

print "\nFireworks products made of plastic colors specific:\n";
print_fireworks_products_colors_plastic_and_specific();

print "\nFireworks products have:\n";
print_fireworks_products_haves();

print "\nFireworks products have HTML:\n";
print_fireworks_products_html();

print "\nFireworks products have HTML specific:\n";
print_fireworks_products_html_and_specific();

print "\nFireworks products have HTML happy:\n";
print_fireworks_products_html_and_happy();

print "\nFireworks products have HTML packaged:\n";
print_fireworks_products_html_and_packages();

print "\nFireworks products have HTML made of tiles:\n";
print_fireworks_products_html_and_tiles();

print "\nFireworks products have HTML made of colors:\n";
print_fireworks_products_html_and_colors();

print "\nFireworks products have HTML made of plastic colors:\n";
print_fireworks_products_html_and_colors_plastic();

print "\nFireworks products have layout text:\n";
print_fireworks_products_layout_text();

print "\nFireworks products have layout text specific:\n";
print_fireworks_products_layout_text_and_specific();


