#!/usr/bin/env perl
# For Abraham-son (Chap. 14), working both in Israel and the United States, the
# moment that—in his own words—was about to change everything, was when he
# found a paper published in 1979 by the RME designers and researchers Van den Brink
# and Forestland. In this paper they described and analysed a conversation between
# a father (Forestland himself) and his eight-year old son about a poster showing a
# man and a whale, in which the size of the whale compared to that of the man was
# exaggerated to make it more sensational.

use strict;
use warnings;

# Read the paper's text.
my $paper = do {
    open my $fh, '<', 'abrasion_van_den_brink_forestland.txt';
    <$fh>;
};

# Find the index of the conversation between Forestland and his son.
my $start_index = index($paper, 'Forestland:');
die "Conversation not found" unless $start_index != -1;

# Extract the conversation.
my $conversation = substr($paper, $start_index);

# Find the index of the end of the conversation.
my $end_index = index($conversation, 'Van den Brink:');
die "Conversation not found" unless $end_index != -1;

# Replace all occurrences of 'man' with 'whale' in the conversation.
my $modified_conversation = $conversation =~ s/man/whale/g;

# Count the number of times 'whale' appears in the modified conversation.
my $whale_count = $modified_conversation =~ /whale/g;

# Print the modified conversation and the count of 'whale'.
print $modified_conversation;
print "The word 'whale' appears $whale_count times in the modified conversation.\n";

sub print_conversation {
    my ($conversation, $index) = @_;

    # Print the conversation with a line number.
    print "$index: $conversation\n";

    # Check if there are more lines to print.
    if ($index < length($conversation) - 1) {
        print_conversation($conversation, $index + 1);
    }
    return;
}

# Print the conversation with line numbers.
print_conversation($conversation, 0);

sub print_conversation_lines {
    my ($conversation, $index, $lines_per_page) = @_;

    # Print the conversation with a line number.
    print "$index: $conversation\n";

    # Check if there are more lines to print.
    if ($index < length($conversation) - 1) {
        if ($index % $lines_per_page == $lines_per_page - 1) {
            print "Press Enter to continue...";
            <STDIN>;
        }
        print_conversation_lines($conversation, $index + 1, $lines_per_page
        );
    }
    return;
}

# Print the conversation with line numbers, with 10 lines per page.
print_conversation_lines($conversation, 0, 10);

sub print_conversation_output {
    my ($conversation, $index, $output_length) = @_;

    # Print the conversation with a line number.
    print substr($conversation, 0, $output_length) . "\n";

    # Check if there are more lines to print.
    if ($index < length($conversation) - 1) {
        print_conversation_output($conversation, $index + 1, $output_length
        );
    }
    return;
}

# Print the conversation with line numbers, with 50 characters per line.
print_conversation_output($conversation, 0, 50);

sub print_conversation_input {
    my ($conversation, $index, $input_length) = @_;

    # Print the conversation with a line number.
    print substr($conversation, 0, $input_length) . "\n";

    # Check if there are more lines to print.
    if ($index < length($conversation) - 1) {
        print_conversation_input($conversation, $index + 1, $input_length
        );
    }
    return;
}

sub get_conversation_length {
    my ($conversation) = @_;

    # Return the length of the conversation.
    return length($conversation);
}

# Print the length of the conversation.
print "The conversation has " . get_conversation_length($conversation) . " lines.\n";

sub get_conversation_logical {
    my ($conversation) = @_;

    # Split the conversation into logical sections.
    my @sections = split(/\n\n/, $conversation);

    # Return the number of logical sections.
    return scalar @sections;
}

# Print the number of logical sections in the conversation.
print "The conversation has " . get_conversation_logical($conversation) . " logical sections.\n";

sub get_conversation_paragraphs {
    my ($conversation) = @_;

    # Split the conversation into paragraphs.
    my @paragraphs = split(/\n\n\n/, $conversation);

    # Return the number of paragraphs.
    return scalar @paragraphs;
}

# Print the number of paragraphs in the conversation.
print "The conversation has " . get_conversation_paragraphs($conversation) . " paragraphs.\n";

sub get_conversation_sentences {
    my ($conversation) = @_;

    # Split the conversation into sentences.
    my @sentences = split(/\.\s+/, $conversation);

    # Return the number of sentences.
    return scalar @sentences;
}

# Print the number of sentences in the conversation.
print "The conversation has " . get_conversation_sentences($conversation) . " sentences.\n";

sub get_conversation_words {
    my ($conversation) = @_;

    # Split the conversation into words.
    my @words = split(/\s+/, $conversation);
    my $word_count = scalar @words;

    # Return the number of words.
    return $word_count;
}

# Print the number of words in the conversation.
print "The conversation has " . get_conversation_words($conversation) . " words.\n";

sub get_conversation_unique_words {
    my ($conversation) = @_;

    # Split the conversation into words.
    my @words = split(/\s+/, $conversation);

    # Remove duplicates from the array.
    my %unique_words = map { $_ => 1 } @words;

    # Return the number of unique words.
    return scalar keys %unique_words;
}

# Print the number of unique words in the conversation.
print "The conversation has " . get_conversation_unique_words($conversation) . " unique words.\n";

sub get_conversation_most_common_word {
    my ($conversation) = @_;

    # Split the conversation into words.
    my @words = split(/\s+/, $conversation);

    # Count the occurrences of each word.
    my %word_counts;
    foreach my $word (@words) {
        $word_counts{$word}++;
    }

    # Find the word with the highest count.
    my ($most_common_word, $max_count) = (undef, 0);
    foreach my $word (keys %word_counts) {
        $max_count = $word_counts{$word} if $word_counts{$word} > $max_count;
    }
    return $most_common_word;
}

# Print the most common word in the conversation.
print "The most common word in the conversation is \"" . get_conversation_most_common_word($conversation) . "\".\n";

sub get_conversation_average_word_length {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my $total_length = 0;

    foreach my $word (@words) {
        $total_length += length($word);
    }
    return $total_length / scalar @words;
}

# Print the average word length in the conversation.
print "The average word length in the conversation is " . get_conversation_average_word_length($conversation) . " characters.\n";

sub get_conversation_median_word_length {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my @sorted_words = sort { length($b) <=> length($a) } @
    words;

    my $count = scalar @sorted_words;
    return $sorted_words[$count / 2] if $count % 2 == 1;
    return ($sorted_words[$count / 2 - 1] + $sorted_words[$1]);
    return $sorted_words[$count / 2 - 1] if $count % 2 == 1;
    
    # Handle even number of words.
    return ($sorted_words[$count / 2 - 1] + $sorted_words[$count / 2]) / 2;
}

# Print the median word length in the conversation.
print "The median word length in the conversation is " . get_conversation_median_word_length($conversation) . " characters.\n";

sub get_conversation_longest_word {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my $longest_word = $words[0];
    foreach my $word (@words) {
        $longest_word = $word if length($word) > length($longest_word);
    }
    return $longest_word;
}

sub get_answer_string {
    my ($question) = @_;

    # Replace placeholders with appropriate answers.
    my $answer = $question;
    $answer =~ s/Who is the author of the novel 'Forestland'?/J.R.R. Tolkien/g;
    $answer =~ s/What is the name of the character in 'The Hobbit' who lives in a dark forest?/Frodo Bagginess/g;
    $answer =~ s/What is the name of the main protagonist in 'Pride and Prejudice'?/Jane Austen/g;
    $answer =~ s/What is the name of the city in 'Alice in Wonderland' where the story begins?/London/g;

    return $answer;
}



print_conversation($modified_conversation, 0);

print "The word 'whale' appears $whale_count times in the modified conversation.\n";

sub print_conversation_array {
    my ($conversation, $index, $lines_per_page) = @_;

    # Check if there are more lines to print.
    if ($index < length($conversation) - 1) {
        if ($index % $lines_per_page == $lines_per_page - 1) {
            print "Press Enter to continue...";
            <STDIN>;
        }
        print_conversation_array($conversation, $index + 1, $lines_per_page);
    }
    return $conversation;
}

# Print the conversation with line numbers, with 10 lines per page.
my @conversation_array = print_conversation_array($modified_conversation, 0);
print join("", @conversation_array);

sub print_conversation_output_observations {
    my ($conversation, $index, $output_length) = @_;

    # Print the conversation with a line number.
    print substr($conversation, 0, $output_length) . "\n";

    # Check if there are more lines to print.
    if ($index < length($conversation) - 1) {
        print_conversation_output_observations($conversation, $index + 1, $output_length
        );
    }
    return;
}

# Print the conversation with line numbers, with 50 characters per line.
print_conversation_output_observations($modified_conversation, 0, 50);


sub print_conversation_types {
    my ($conversation) = @_;

    # Split the conversation into logical sections.
    my @sections = split(/\n\n/, $conversation);

    # Count the occurrences of each type of conversation.
    my %type_counts;
    foreach my $section (@sections) {
        my $type = get_conversation_type($section);
        $type_counts{$type}++;
    }
    # Print the type counts.
    foreach my $type (sort keys %type_counts) {
        print "$type: $type_counts{$type}\n";
    }
}

# Print the types of conversations in the conversation.
print_conversation_types($modified_conversation);

sub get_conversation_port_open {
    my ($section) = @_;
    my ($port_number) = $section =~ /Port: (\d+)/;
    return defined $port_number && $port_number >= 1 && $port_number <=
    65535;
}

sub get_conversation_port_open_address {
    my ($section) = @_;
    my ($port_number) = $section =~ /Port: (\d+)/;
    return defined $port_number && $port_number >= 1 && $port_number <=
    65535 && get_ip_address($section);
}

sub get_conversation_type {
    my ($section) = @_;
    if (get_conversation_port_open($section)) {
        return "Port Open";
        } elsif (get_conversation_port_open_address($section)) {
            return "Port Open and Address";
            } elsif (get_conversation_port_closed($section)) {
                return "Port Closed";
                } elsif (get_conversation_port_filtered($section)) {
                    return "Port Filtered";
                    } elsif (get_conversation_protocol_unknown($section)) {
                        return "Protocol Unknown";
                        } elsif (get_conversation_protocol_tcp($section)) {
                            return "Protocol TCP";
                            } elsif (get_conversation_protocol_udp($section)) {
                                return "Protocol UDP";
                                } elsif (get_conversation_protocol_other($section)) {
                                    return "Protocol Other";
                                    }
}

# Test the function with the provided conversation.
my $conversation_type = get_conversation_type($modified_conversation);
print "The conversation type is $conversation_type.\n";

sub get_conversation_port_closed {
    my ($section) = @_;
    return $section =~ /Closed/i;

    # Test the function with the provided conversation.
    my $conversation_port_closed = get_conversation_port_closed($modified_conversation);
    print "The conversation is $conversation_port_closed port closed.\n";
}

sub get_conversation_port_filtered {
    my ($section) = @_;
    return $section =~ /Filtered/i;

    # Test the function with the provided conversation.
    my $conversation_port_filtered = get_conversation_port_filtered($modified_conversation);
    print "The conversation is $conversation_port_filtered port filtered.\n";
}

sub get_conversation_protocol_unknown {
    my ($section) = @_;
    return $section =~ /Unknown/i;

    # Test the function with the provided conversation.
    my $conversation_protocol_unknown = get_conversation_protocol_unknown($modified_conversation);
    print "The conversation is $conversation_protocol_unknown protocol unknown.\n";
}

sub get_conversation_protocol_tcp {
    my ($section) = @_;
    return $section =~ /TCP/i;

    # Test the function with the provided conversation.
    my $conversation_protocol_tcp = get_conversation_protocol_tcp($modified_conversation);
    print "The conversation is $conversation_protocol_tcp protocol TCP.\n";
}

sub get_conversation_protocol_udp {
    my ($section) = @_;
    return $section =~ /UDP/i;

    # Test the function with the provided conversation.
    my $conversation_protocol_udp = get_conversation_protocol_udp($modified_conversation);
    print "The conversation is $conversation_protocol_udp protocol UDP.\n";
}

sub get_conversation_protocol_other {
    my ($section) = @_;
    return $section =~ /Other/i;

    # Test the function with the provided conversation.
    my $conversation_protocol_other = get_conversation_protocol_other($modified_conversation);
    print "The conversation is $conversation_protocol_other protocol other.\n";
}

sub get_ip_address {
    my ($section) = @_;
    return $section =~ /IPv4:\s+(\d+\.\d+\.\d+\.\\d+)/;
}


sub get_port_number {
    my ($section) = @_;
    return $section =~ /Port: (\d+)/;
}



# Print the average word length in the conversation.
print "The average word length in the conversation is " . get_conversation_average_word_length($conversation) . " characters.\n";


# Print the median word length in the conversation.
print "The median word length in the conversation is " . get_conversation_median_word_length($conversation) . " characters.\n";


# Print the longest word in the conversation.
print "The longest word in the conversation is " . get_conversation_longest_word($conversation). ".\n";

sub get_longest_word {
    my @words = @_;
    return $words[0] if @words == 1;
    return $words[0] if length($words[0]) >= length($words[1]);
    return get_longest_word(@words[1.. $#words]);
}

sub get_conversation_shortest_word {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    return get_shortest_word(@words);
}

# Print the shortest word in the conversation.
print "The shortest word in the conversation is " . get_conversation_shortest_word($conversation). ".\n";

sub get_shortest_word {
    my @words = @_;
    return $words[0] if @words == 1;
    return $words[0] if length($words[0]) <= length($words[1]);
    return get_shortest_word(@words[1.. $#words]);
}

sub get_conversation_word_frequency {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    return \%word_frequency;
}

# Print the word frequency in the conversation.
print "The word frequency in the conversation is:\n";


# Print the number of unique words in the conversation.
print "The number of unique words in the conversation is " . get_conversation_unique_words($conversation). ".\n";

sub get_conversation_word_pairs {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_pairs;
    foreach my $i (0.. $#words - 1) {
        for my $j ($i + 1.. $#words) {
            my $pair = join(" ", $words[$i], $words[$j]);
            $word_pairs{$pair}++;
        }
    }
    return \%word_pairs;
}

# Print the word pairs in the conversation.
print "The word pairs in the conversation are:\n";


sub get_conversation_shortest_word_unlocked {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    return get_shortest_word_unlocked(@words);
}

sub get_shortest_word_unlocked {
    my @words = @_;
    return $words[0] if @words == 1;
    return $words[0] if length($words[0]) <= length($words[1]);
    return get_shortest_word_unlocked(@words[1.. $#words]);

    # Test the function with the provided conversation.
    my $conversation_longest_word_unlocked = get_conversation_longest_word_unlocked($modified_conversation);
    print "The longest word in the conversation, excluding common words, is " . $conversation_longest_word_unlocked. ".\n";
}



sub get_conversation_word_frequency_unlocked {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    return \%word_frequency;

    # Test the function with the provided conversation.
    my $conversation_word_frequency_unlocked = get_conversation_word_frequency_unlocked($modified_conversation);
    print "The word frequency in the conversation, excluding common words, is:\n";
    foreach my $word (sort keys %$conversation_word_frequency_unlocked) {
        print "$word: $conversation_word_frequency_unlocked->{$word}\n";
    }

    # Test the function with the provided conversation.
    my $conversation_unique_words_unlocked = get_conversation_unique_words_unlocked($modified_conversation);
    print "The number of unique words in the conversation, excluding common words, is " . $conversation_unique_words_unlocked. ".\n";
    # Test the function with the provided conversation.
    my $conversation_word_pairs_unlocked = get_conversation_word_pairs_unlocked($modified_conversation);
    print "The word pairs in the conversation, excluding common words, are:\n";
    foreach my $pair (sort keys %$conversation_word_pairs_unlocked) {
        print "$pair: $conversation_word_pairs_unlocked->{$pair}\n";
    }
    # Test the function with the provided conversation.
    my $conversation_longest_word_unlocked = get_conversation_longest_word_unlocked($modified_conversation);
    print "The longest word in the conversation, excluding common words, is " . $conversation_longest_word_unlocked. ".\n";
    # Test the function with the provided conversation.
    my $conversation_shortest_word_unlocked = get_conversation_shortest_word_unlocked($modified_conversation);
    print "The shortest word in the conversation, excluding common words, is " . $conversation_shortest_word_unlocked. ".\n";
}

# Test the function with the provided conversation.
my $conversation_longest_word_unlocked = get_conversation_longest_word_unlocked($modified_conversation);
print "The longest word in the conversation, excluding common words, is " . $conversation_longest_word_unlocked. ".\n";
# Test the function with the provided conversation.
my $conversation_shortest_word_unlocked = get_conversation_shortest_word_unlocked($modified_conversation);
print "The shortest word in the conversation, excluding common words, is " . $conversation_shortest_word_unlocked. ".\n";
# Test the function with the provided conversation.
my $conversation_word_frequency_unlocked = get_conversation_word_frequency_unlocked($modified_conversation);
print "The word frequency in the conversation, excluding common words, is:\n";

sub get_conversation_kudo_perl {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    my $kudo_perl = 0;
    foreach my $word (sort { $word_frequency{$b} <=> $word_frequency
    {$a} } keys %word_frequency) {
        if ($word =~ /perl/i) {
            $kudo_perl += $word_frequency{$word};
        }
    }
    return $kudo_perl;
}

# Test the function with the provided conversation.
my $kudo_perl = get_conversation_kudo_perl($modified_conversation);
print "The number of kudos for Perl in the conversation is " . $kudo_perl. ".\n";


sub get_conversation_kudo_perl_pm {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    my $kudo_perl_pm = 0;
    foreach my $word (sort { $word_frequency{$b} <=> $word_frequency
    {$a} } keys %word_frequency) {
        if ($word =~ /perl|pm/i) {
            $kudo_perl_pm += $word_frequency{$word};
        }
    }
    return $kudo_perl_pm;
}

# Test the function with the provided conversation.
my $kudo_perl_pm = get_conversation_kudo_perl_pm($modified_conversation);
print "The number of kudos for Perl or PM in the conversation is " . $kudo_perl_pm. ".\n";


sub get_conversation_kudo_perl_pm_author {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    my $kudo_perl_pm_author = 0;
    foreach my $word (sort { $word_frequency{$b} <=> $word_frequency
    {$a} } keys %word_frequency) {
        if ($word =~ /perl|pm/i && $word ne 'perl' && $word ne 'pm') {
            $kudo_perl_pm_author += $word_frequency{$word};
        }
    }
    return $kudo_perl_pm_author;
}

# Test the function with the provided conversation.
my $kudo_perl_pm_author = get_conversation_kudo_perl_pm_author($modified_conversation);
print "The number of kudos for Perl or PM by non-Perl or PM authors in
the conversation is " . $kudo_perl_pm_author. ".\n";

sub kudo_perl_pm_author {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    my $kudo_perl_pm_author = 0;
    foreach my $word (sort { $word_frequency{$b} <=> $word_frequency
    {$a} } keys %word_frequency) {
        if ($word =~ /perl|pm/i && $word ne 'perl' && $word ne 'pm') {
            $kudo_perl_pm_author += $word_frequency{$word};
        }
    }
    return $kudo_perl_pm_author;
}

print "The number of kudos for Perl or PM by non-Perl or PM authors in
the conversation is " . $kudo_perl_pm_author. ".\n";

sub kudo_perl_logical {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    my $kudo_perl_logical = 0;
    foreach my $word (sort { $word_frequency{$b} <=> $word_frequency
    {$a} } keys %word_frequency) {
        if ($word =~ /perl|logical/i) {
            $kudo_perl_logical += $word_frequency{$word};
        }
    }
    return $kudo_perl_logical;
}

# Test the function with the provided conversation.
my $kudo_perl_logical = kudo_perl_logical($modified_conversation);
print "The number of kudos for Perl or logical in the conversation is " . $kudo_perl_logical. ".\n";

sub kudo_perl_logical_author {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    my $kudo_perl_logical_author = 0;
    foreach my $word (sort { $word_frequency{$b} <=> $word_frequency
    {$a} } keys %word_frequency) {
        if ($word =~ /perl|logical/i && $word ne 'perl' && $word ne 'logical') {
            $kudo_perl_logical_author += $word_frequency{$word};
        }
    }
    return $kudo_perl_logical_author;
}

# Test the function with the provided conversation.
my $kudo_perl_logical_author = kudo_perl_logical_author($modified_conversation);
print "The number of kudos for Perl or logical by non-Perl or logical authors in
the conversation is " . $kudo_perl_logical_author. ".\n";


sub get_conversation_word_pairs_unlocked {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my %word_frequency;
    foreach my $word (@words) {
        $word_frequency{$word}++;
    }
    my %word_pairs;
    for my $i (0.. $#words) {
        for my $j ($i + 1.. $#words) {
            my $pair = join ' ', sort { $word_frequency{$a} <=> $word_frequency{$b} } $words[$i], $words[$j];
            $word_pairs{$pair}++;
        }

    }
    return \%word_pairs;
}

sub get_conversation_longest_word_unlocked {
    my ($conversation) = @_;
    my @words = split(/\s+/, $conversation);
    my $longest_word;
    foreach my $word (@words) {
        if (length($word) > length($longest_word) || length($word) == length($longest_word) && $word < $longest_word) {
            $longest_word = $word;
        }
    }
    return $longest_word;
}




