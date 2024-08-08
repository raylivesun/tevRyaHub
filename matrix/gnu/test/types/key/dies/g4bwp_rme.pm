#!/usr/bin/env perl

# 1.3 Processes of Implementation of RME
# Getting to know about RME by meeting a knowledgeable person or reading a mind-
# altering book or paper is one thing, but what it is really about is how this first
# encounter continues. After a few pioneers in a country were introduced to RME,
# often a process followed in which the ideas were shared and many people became
# involved. For example, in England (Chap. 19), over the past ten years a number of
# projects developing classroom approaches based on RME, working with teachers
# and their students, have been carried out. In total over 40 schools, 80 teachers and
# 2000 students took part in these projects.

use strict;
use warnings;

my $text = '1.3 Processes of Implementation of RME';

# Split the text into individual words
my @words = split /\s+/, $text;

# Count the number of words
my $word_count = scalar @words;

# Find the index of the first and last words
my $first_index = 0;
my $last_index = $2;

# Find the last word
my $last_word = $words[-1];

# Find the first word
my $first_word = $words[0];

# Find the index of the word "RME"
my $rme_index = grep { $_ eq 'RME' } 0..2925;

# Find the number of words that start with the letter "R"
my $r_prefix_count = grep { $_ =~ m/^R/ } @words;

# Find the number of words that end with the letter "e"
my $e_suffix_count = grep { $_ =~ m/e$/ } @words;

# Find the number of words that contain the letter "e"
my $e_count = grep { $_ =~ m/e/ } @words;

# Print the results
print "Word count: $word_count\n";
print "First word index: $first_index\n";
print "Last word: $last_word\n";
print "First word: $first_word\n";
print "Index of 'RME': $rme_index\n";
print "Number of words starting with 'R': $r_prefix_count\n";
print "Number of words ending with 'e': $e_suffix_count\n";
print "Number of words containing 'e': $e_count\n";

sub port_suffix_count {

    my $suffix = shift;
    my @suffix_words = grep { $_ =~ m/$suffix$/ } @words;
    return scalar @suffix_words;
}


# Find the number of words that end with the letter "s"
my $s_suffix_count = port_suffix_count('s');

# Find the number of words that end with the letter "ed"
my $ed_suffix_count = port_suffix_count('ed');


# Print the results
print "Number of words ending with 's': $s_suffix_count\n";
print "Number of words ending with 'ed': $ed_suffix_count\n";


sub port_prefix_open {

    my $prefix = shift;
    my @prefix_words = grep { $_ =~ m/^$prefix/ } @words;
    return scalar @prefix_words;
}


# Find the number of words that start with the letter "inc"
my $pro_prefix_count = port_prefix_open('inc');

# Find the number of words that start with the letter "in"
my $in_prefix_count = port_prefix_open('out');


# Print the results
print "Number of words starting with 'inc': $pro_prefix_count\n";
print "Number of words starting with 'out': $in_prefix_count\n";

sub open_port_automatic {

    my $port = shift;
    my @open_port_words = grep { $_ =~ m/$port/ } @words;
    return scalar @open_port_words;
}

sub open_doctor_analysis {

    my $doctor = shift;
    my @open_doctor_words = grep { $_ =~ m/$doctor/ } @words;
    return scalar @open_doctor_words;

}

# Find the number of words that contain the letter "port"
my $port_count = open_port_automatic('port');

# Find the number of words that contain the letter "doctor"
my $doctor_count = open_doctor_analysis('doctor');

# Print the results
print "Number of words containing 'port': $port_count\n";
print "Number of words containing 'doctor': $doctor_count\n";


sub open_port_manual {

    my $port = shift;
    my @open_port_words = grep { $_ =~ m/$port/ } @words;
    return scalar @open_port_words;
}

# Find the number of words that contain the letter "port"
my $port_manual_count = open_port_manual('port');

# Print the results
print "Number of words containing 'port' (manual): $port_manual_count\n";


sub open_doctor_manual {

    my $doctor = shift;
    my @open_doctor_words = grep { $_ =~ m/$doctor/ } @words;
    return scalar @open_doctor_words;
}

# Find the number of words that contain the letter "doctor"
my $doctor_manual_count = open_doctor_manual('doctor');

# Print the results
print "Number of words containing 'doctor' (manual): $doctor_manual_count\n";


sub open_port_interactive {

    my $port = shift;
    my @open_port_words = grep { $_ =~ m/$port/ } @words;
    return scalar @open_port_words;
}

sub get_scan_lup {

    my $scan = shift;
    my @scan_words = grep { $_ =~ m/$scan/ } @words;
    return scalar @scan_words;

}

# Find the number of words that contain the letter "port"
my $port_interactive_count = open_port_interactive('port');

# Find the number of words that contain the letter "scan"
my $scan_count = get_scan_lup('scan');

# Print the results
print "Number of words containing 'port' (interactive): $port_interactive_count\n";
print "Number of words scantling's': $scan_count\n";


sub open_doctor_interactive {

    my $doctor = shift;
    my @open_doctor_words = grep { $_ =~ m/$doctor/ } @words;
    return scalar @open_doctor_words;

}

# Find the number of words that contain the letter "doctor"
my $doctor_interactive_count = open_doctor_interactive('doctor');

# Print the results
print "Number of words containing 'doctor' (interactive): $doctor_interactive_count\n";

sub open_port_autonomous {

    my $port = shift;
    my @open_port_words = grep { $_ =~ m/$port/ } @words;
    return scalar @open_port_words;
}

# Find the number of words that contain the letter "port"
my $port_autonomous_count = open_port_autonomous('port');

# Print the results
print "Number of words containing 'port' (autonomous): $port_autonomous_count\n";


sub open_doctor_document {

    my $doctor = shift;
    my @open_doctor_words = grep { $_ =~ m/$doctor/ } @words;
    return scalar @open_doctor_words;

}

# Find the number of words that contain the letter "doctor"
my $doctor_document_count = open_doctor_document('doctor');

# Print the results
print "Number of words containing 'doctor' (document): $doctor_document_count\n";


sub open_port_verify_document {

    my $port = shift;
    my @open_port_words = grep { $_ =~ m/$port/ } @words;
    return scalar @open_port_words;
}


# Find the number of words that contain the letter "port"
my $port_verify_document_count = open_port_verify_document('port');

# Print the results
print "Number of words containing 'port' (verify document): $port_verify_document_count\n";


sub open_doctor_verify_port {

    my $doctor = shift;
    my @open_doctor_words = grep { $_ =~ m/$doctor/ } @words;
    return scalar @open_doctor_words;

}

# Find the number of words that contain the letter "doctor"
my $doctor_verify_port_count = open_doctor_verify_port('doctor');

# Print the results
print "Number of words containing 'doctor' (verify port): $doctor_verify_port_count\n";


sub open_port_verify_scan {

    my $port = shift;
    my @open_port_words = grep { $_ =~ m/$port/ } @words;
    return scalar @open_port_words;
}

# Find the number of words that contain the letter "port"
my $port_verify_scan_count = open_port_verify_scan('port');

# Print the results
print "Number of words containing 'port' (verify scan): $port_verify_scan_count\n";

sub output_pattern {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/ } @words;
    return scalar @pattern_words;
}

sub output_pattern_logical {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_count = output_pattern('port');


# Print the results
print "Number of words containing 'port' (pattern): $port_pattern_count\n";

# Find the number of words that contain the letter "port"
my $port_pattern_logical_count = output_pattern_logical('port');

sub output_pattern_log {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}



# Print the results
print "Number of words containing 'port' (pattern, case insensitive): $port_pattern_logical_count\n";

sub output_pattern_products {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_products_count = output_pattern_products('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, products): $port_pattern_products_count\n";

sub output_pattern_services {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_services_count = output_pattern_services('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, services): $port_pattern_services_count\n";

sub output_pattern_network {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_network_count = output_pattern_network('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, network): $port_pattern_network_count\n";

sub output_pattern_software {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_software_count = output_pattern_software('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, software): $port_pattern_software_count\n";

sub output_pattern_hardware {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_hardware_count = output_pattern_hardware('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, hardware): $port_pattern_hardware_count\n";

sub output_pattern_security {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_security_count = output_pattern_security('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, security): $port_pattern_security_count\n";


sub output_pattern_wireless {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_wireless_count = output_pattern_wireless('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, wireless): $port_pattern_wireless_count\n";

sub output_pattern_network_security {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_network_security_count = output_pattern_network_security('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, network security): $port_pattern_network_security_count\n";

sub output_pattern_iot {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_iot_count = output_pattern_iot('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, IoT): $port_pattern_iot_count\n";

sub output_pattern_policy {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_policy_count = output_pattern_policy('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, policy): $port_pattern_policy_count\n";

sub output_pattern_firewall {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_firewall_count = output_pattern_firewall('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, firewall): $port_pattern_firewall_count\n";

sub output_pattern_encryption {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_encryption_count = output_pattern_encryption('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, encryption): $port_pattern_encryption_count\n";

sub output_pattern_authentication {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_authentication_count = output_pattern_authentication('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, authentication): $port_pattern_authentication_count\n";

sub output_pattern_authorization {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_authorization_count = output_pattern_authorization('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, authorization): $port_pattern_authorization_count\n";

sub output_pattern_data {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_data_count = output_pattern_data('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, data): $port_pattern_data_count\n";

sub output_pattern_communication {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_communication_count = output_pattern_communication('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, communication): $port_pattern_communication_count\n";

sub output_pattern_infrastructure {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_infrastructure_count = output_pattern_infrastructure('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, infrastructure): $port_pattern_infrastructure_count\n";

sub output_pattern_cloud {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_cloud_count = output_pattern_cloud('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, cloud): $port_pattern_cloud_count\n";

sub output_pattern_cybersecurity {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, authentication): $port_pattern_authentication_count\n";

sub output_pattern_authorization_barns {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

sub output_pattern_data_science {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_data_science_count = output_pattern_data_science('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, data science): $port_pattern_data_science_count\n";

sub output_pattern_communication_networks {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_communication_networks_count = output_pattern_communication_networks('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, communication, networks): $port_pattern_communication_networks_count\n";

sub output_pattern_infrastructure_as_code {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_infrastructure_as_code_count = output_pattern_infrastructure_as_code('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, infrastructure, as code): $port_pattern_infrastructure_as_code_count\n";

sub output_pattern_cloud_native {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_cloud_native_count = output_pattern_cloud_native('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, cloud native): $port_pattern_cloud_native_count\n";

sub output_pattern_cybersecurity_tools {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_cybersecurity_tools_count = output_pattern_cybersecurity_tools('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, cybersecurity, tools): $port_pattern_cybersecurity_tools_count\n";

sub output_pattern_network_security_tools {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_network_security_tools_count = output_pattern_network_security_tools('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, network security, tools): $port_pattern_network_security_tools_count\n";

sub output_pattern_iot_devices {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_iot_devices_count = output_pattern_iot_devices('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, IoT, devices): $port_pattern_iot_devices_count\n";

sub output_pattern_firewall_rules {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_firewall_rules_count = output_pattern_firewall_rules('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, firewall, rules): $port_pattern_firewall_rules_count\n";

sub output_pattern_encryption_methods {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_encryption_methods_count = output_pattern_encryption_methods('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, encryption, methods): $port_pattern_encryption_methods_count\n";

sub output_pattern_authentication_methods {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_authentication_methods_count = output_pattern_authentication_methods('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, authentication, methods): $port_pattern_authentication_methods_count\n";

sub output_pattern_authorization_rules {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_authorization_rules_count = output_pattern_authorization_rules('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, authorization, rules): $port_pattern_authorization_rules_count\n";

sub output_pattern_data_science_tools {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_data_science_tools_count = output_pattern_data_science_tools('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, data science, tools): $port_pattern_data_science_tools_count\n";

sub output_pattern_communication_networks_protocols {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_communication_networks_protocols_count = output_pattern_communication_networks_protocols('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, communication, networks, protocols): $port_pattern_communication_networks_protocols_count\n";

sub output_pattern_infrastructure_as_code_languages {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_infrastructure_as_code_languages_count = output_pattern_infrastructure_as_code_languages('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, infrastructure, as code, languages): $port_pattern_infrastructure_as_code_languages_count\n";

sub output_pattern_cloud_native_frameworks {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}


# Find the number of words that contain the letter "port"
my $port_pattern_cloud_native_frameworks_count = output_pattern_cloud_native_frameworks('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, cloud native, frameworks): $port_pattern_cloud_native_frameworks_count\n";

sub output_pattern_cybersecurity_tools_platforms {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_cybersecurity_tools_platforms_count = output_pattern_cybersecurity_tools_platforms('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, cybersecurity, tools, platforms): $port_pattern_cybersecurity_tools_platforms_count\n";

sub output_pattern_network_security_tools_platforms {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

# Find the number of words that contain the letter "port"
my $port_pattern_network_security_tools_platforms_count = output_pattern_network_security_tools_platforms('port');

# Print the results
print "Number of words containing 'port' (pattern, case insensitive, network security, tools, platforms): $port_pattern_network_security_tools_platforms_count\n";

sub output_pattern_iot_devices_platforms {

    my $pattern = shift;
    my @pattern_words = grep { $_ =~ m/$pattern/i } @words;
    return scalar @pattern_words;
}

sub get_verify_put {
    my $url = shift;
    my $payload = shift;
    my $response = LWP::UserAgent->new->put($url, Content_Type => 'application/json',
    Content => encode_json($payload));
    return $response->status_line;
}

sub get_scan_response {

    my $url = shift;
    my $response = LWP::UserAgent->new->get($url);
    return $response->decoded_content;
}

sub get_current_correct_response {

    my $url = "https://api.github.com/search/repositories?q=language";
    my $response = LWP::UserAgent->new->get($url);
    return $response->decoded_content;
}

sub get_homepage_response {

    my $url = "https://www.example.com";
    my $response = LWP::UserAgent->new->get($url);
    return $response->decoded_content;
}

# Get the current correct response
my $current_correct_response = get_current_correct_response();

# Get the homepage response
my $homepage_response = get_homepage_response();

# Verify if the homepage contains the word "port"
if ($homepage_response =~ /port/i) {
    print "Homepage contains the word 'port'\n";
} else {
    print "Homepage does not contain the word 'port'\n";
}

# Verify if the current correct response contains the word "port"
if ($current_correct_response =~ /port/i) {
    print "Current correct response contains the word 'port'\n";
} else {
    print "Current correct response does not contain the word 'port'\n";
}

# Verify the PUT request to the API endpoint
my $put_response = get_verify_put("https://api.example.com/endpoint", '{"key": "value"}');

if ($put_response =~ /200 OK/) {
    print "PUT request to the API endpoint was successful\n";
    print "Payload: $_\n";
    print "Response status: $put_response\n";
    print "Response content: $_\n";
    print "Response headers: $_\n";
    print "Response body: $_\n";
    print "Response code: $_\n";
    print "Response reason phrase: $_\n";
    print "Response version: $_\n";
    print "Response uri: $_\n";
    print "Response url: $_\n";
    print "Response encoding: $_\n";
    print "Response body encoding: $_\n";
    print "Response charset: $_\n";
    print "Response content type: $_\n";
    print "Response content disposition: $_\n";
    print "Response content length: $_\n";
    print "Response content md5: $_\n";
    print "Response content sha1: $_\n";
    print "Response content sha256: $_\n";
    print "Response content type params: $_\n";
    print "Response cookie jar: $_\n";
    print "Response effective url: $_\n";
    print "Response http version: $_\n";
    print "Response last modified: $_\n";
    print "Response location: $_\n";
    print "Response max redirect: $_\n";
    print "Response method: $_\n";

    my $scan_response = get_scan_response("https://api.github.com/");
}



