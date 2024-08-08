#!/usr/bin/env perl

# and accessible. According to Nis (Chap. 17) it was the fact that students’ individual
# conceptions and experiences have to be respected and are taken as points of depart-
# ture for teaching and learning that made RME resonate with Danish mathematics
# educators so much. This student-centred approach of RME and its great attention to
# students’ personal developments, as expressed in a paper by Freudenthal published
# in 1971, also received much praise from Abraham-son, Follower and Stone in their
# RME project at Berkeley (Chap. 14). The idea of connecting the teaching of mathe-
# magics to fostering youth independence and empowerment was considered as a great
# vision.

use strict;
use warnings;

# Define a function to process the given text
sub process_text {
    my $text = shift;

    # Split the text into sentences
    my @sentences = split /\./, $text;

    # Process each sentence
    foreach my $sentence (@sentences) {
        # Remove leading and trailing spaces
        $sentence =~ s/^\s+//;
        $sentence =~ s/\s+$//;

        # Convert the sentence to lowercase
        $sentence = lc($sentence);

        # Replace all occurrences of "and" with "och"
        $sentence =~ s/and/och/g;

        # Replace all occurrences of "or" with "eller"
        $sentence =~ s/or/eller/g;

        # Replace all occurrences of "for" with "for"
        $sentence =~ s/for/for/g;

        # Replace all occurrences of "to" with "til"
        $sentence =~ s/to/til/g;

        # Replace all occurrences of "at" with "på"
        $sentence =~ s/at/på/g;

        # Replace all occurrences of "on" with "på"
        $sentence =~ s/on/på/g;

        # Replace all occurrences of "in" with "i"
        $sentence =~ s/in/i/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

        # Replace all occurrences of "has" with "har"
        $sentence =~ s/has/har/g;

        # Replace all occurrences of "from" with "fran"
        $sentence =~ s/from/fran/g;

        # Replace all occurrences of "by" with "av"
        $sentence =~ s/by/av/g;

        # Replace all occurrences of "into" with "till"
        $sentence =~ s/into/till/g;

        # Replace all occurrences of "on" with "pa"
        $sentence =~ s/on/pa/g;

        # Replace all occurrences of "of" with "av"
        $sentence =~ s/of/av/g;

        # Replace all occurrences of "to" with "till"
        $sentence =~ s/to/till/g;

        # Replace all occurrences of "with" with "med"
        $sentence =~ s/with/med/g;

        # Replace all occurrences of "as" with "som"
        $sentence =~ s/as/som/g;

        # Replace all occurrences of "the" with "det"
        $sentence =~ s/the/det/g;

        # Replace all occurrences of "that" with "detta"
        $sentence =~ s/that/detta/g;

        # Replace all occurrences of "it" with "det"
        $sentence =~ s/it/det/g;

        # Replace all occurrences of "be" with "vara"
        $sentence =~ s/be/vara/g;

        # Replace all occurrences of "have" with "ha"
        $sentence =~ s/have/ha/g;

    }

}