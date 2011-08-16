package test::t::titter;
BEGIN {
push(@INC, '../lib');
}
use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use Bird;

sub init : Test(1) {
    new_ok 'Bird';
}

sub values : Tests {
    my $b1 = Bird->new( name => "kimikimi714" );
    is_deeply [$b1->get_name], ["kimikimi714"];

    my $b2 = Bird->new(name => "reikon");
    is_deeply [$b2->get_name], ["reikon"];
    is_deeply [$b1->get_name], ["kimikimi714"];
=pod
    $list->append("Hello");
	$list->get_values;
    is_deeply [$list->get_values], ["Hello"];

    $list->append("World");
	$list->get_values;
    is_deeply [$list->get_values], ["Hello","World"];

    $list->append(2011);
	$list->get_values;
	is_deeply [$list->get_values], ["Hello","World",2011];
	
=cut
}

__PACKAGE__->runtests;

1;
