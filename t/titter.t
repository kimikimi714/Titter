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
    is_deeply [$b1->get_value("name")], ["kimikimi714"];

	my $b2 = Bird->new( name => "jkondo" );
	my $b3 = Bird->new( name => "reikon" );
	my $b4 = Bird->new( name => "onishi");
    is_deeply [$b2->get_value("name")], ["jkondo"];
    is_deeply [$b1->get_value("name")], ["kimikimi714"];
    
	$b1->tweet("‚ß‚Á‚¿‚á‚Ş‚¸‚©‚µ‚¢‚â‚ñI");
	$b3->tweet("‚µ‚È‚à‚ñ‚Æ‚¨U•à’†‚Å‚·");
	$b4->tweet("‰GŠÛŒä’r‚È‚¤I");
	$b2->tweet("‚«‚å‚¤‚Í‚ ‚Â‚¢‚Å‚·‚ËI");
	
	$b1->follow($b2);
	$b1->follow($b3);
	$b1->follow($b4);
    is_deeply [$b1->{friends}->[0]], [$b4->{name}];

	$b1->friends_timeline;
}

__PACKAGE__->runtests;

1;
