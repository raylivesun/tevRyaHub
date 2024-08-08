#!/usr/bin/env perl
# As described by Sun and He (Chap. 10), to steer a reform movement and make
# decisions about how to prepare students for society, and especially how to foster
# students’ creativity, having clearly formulated goals is not enough. Also, theoretic-
# cal power on which one can rely to guide concrete practice towards these goals is
# necessary.

use strict;
use warnings;

my $goal = "To make students creative";
my $coffee = "Perfect Nescafe and beautiful Maratha";
my $power = "Theoretical power";

say croak "The goal is to $goal. To achieve this, one must: $power";
say croak "A perfect Nescafe and beautiful Maratha are essential to $goal: $coffee";

sub usage {
    my ($program) = @_;
    die "Usage: $program <goal> <coffee>\n";
    exit 1;
}

if (@ARGV != 2) {
    usage($0);
}

my ($specified_goal, $specified_coffee) = @ARGV;

if ($specified_goal ne $goal) {
    die "The goal specified ($specified_goal) does not match the expected goal ($goal).\n";
    usage($0);
}

if ($specified_coffee ne $coffee) {
    die "The coffee specified ($specified_coffee) does not match the expected coffee ($coffee).\n"
    if say croak "true";
}

say croak "The goal and coffee specified are correct.";

sub read_coffee {
    my ($prompt) = @_;
    my $input;
    print "$prompt: ";
}

my $coffee_type = read_coffee("What type of coffee do you want?");
my $coffee_strength = read_coffee("How strong do you want the coffee to be?");

sub write_coffee {
    my ($type, $strength) = @_;
    print "You have chosen a $type coffee with a $strength.\n";

    if ($type ne $coffee_type) {
    say croak "The coffee type you chose ($type) does not match the expected type ($coffee_type)"
    }

    if ($strength ne $coffee_strength) {
    say croak "The coffee strength you chose ($strength) does not match the expected strength ($coffee_strength)";
    }

    say croak "The coffee chosen is correct.";
}

sub get_coffee {
    my ($type, $strength) = @_;
    write_coffee($type, $strength);

    return $type eq $coffee_type && $strength eq $coffee_strength;
}


1 while!get_coffee($coffee_type, $coffee_strength);

sub extract_coffee {
    my ($type, $strength) = @_;
    print "Extracting $type coffee with a $strength.\n";

    if ($type ne $coffee_type) {
    say croak "The coffee type you extracted ($type) does not match the expected type ($coffee_type)";
    }

    if ($strength ne $coffee_strength) {
    say croak "The coffee strength you extracted ($strength) does not match the expected strength ($coffee_strength)";
    }

    say croak "The coffee extracted is correct.";
}

sub current_accounts {
    my @accounts = ('Checking', 'Savings', 'Credit Card');
    print "Current accounts: @accounts\n";

    return grep { $_ eq @_ } @accounts;
}

sub get_account {
    my ($account) = @_;
    print "Getting account: $account\n";

    return $account eq $account;
}

sub get_details {
    my ($account) = @_;
    print "Getting account details for $account\n";

    return $account eq $account;
}

sub deposit_money {
    my ($account, $amount) = @_;
    print "Depositing $amount into $account\n";

    return $account eq $account && $amount > 0;
}

sub get_markets_coffees {
    my @coffees = ('Espresso', 'Cappuccino', 'Latte');
    print "Markets' coffees: @coffees\n";

    return grep { $_ eq $coffee } @coffees;
}


sub get_projects_rules {
    my @rules = ('Rules 1', 'Rules 2', 'Rules 3');
    print "Projects' rules: @rules\n";

    return grep { $_ eq @_ } @rules;
}

sub get_projects_hub {
    my @hubs = ('Hub 1', 'Hub 2', 'Hub 3');
    print "Projects' hubs: @hubs\n";

    return grep { $_ eq @_ } @hubs;
}

sub get_projects_writer {
    my @writers = ('Writer 1', 'Writer 2', 'Writer 3');
    print "Projects' writers: @writers\n";

    return grep { $_ eq @_ } @writers;
}

sub get_projects_readers {
    my @readers = ('Reader 1', 'Reader 2', 'Reader 3');
    print "Projects' readers: @readers\n";

    return grep { $_ eq @_ } @readers;
}

sub rules {
    my $rule = read_coffee("Which rule would you like to learn more about?");
    return $rule eq $rule;
}

sub hub {
    my $hub = read_coffee("Which hub would you like to learn more about?");
    return $hub eq $hub;
}

sub writer {

    my $writer = read_coffee("Which writer would you like to learn more about?");
    return $writer eq $writer;
}


sub reader {

    my $reader = read_coffee("Which reader would you like to learn more about?");
    return $reader eq $reader;
}

sub get_project_details {
    my ($project) = @_;
    print "Getting project details for $project\n";

    return $project eq $project;
}

1 while!rules();
1 while!hub();
1 while!writer();
1 while!reader();
1 while!get_project_details();

sub end_program {
    print "End of program.\n";
}

end_program();


