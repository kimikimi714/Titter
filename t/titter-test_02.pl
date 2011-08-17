package Bird;

our @all_tweet=();

sub new{
    my ( $class, %args ) = @_;
    my $self = { %args, friends=>[] }; # ŽŽ‚µ‚Étweet=>[]‚È‚­‚µ‚½
    return bless $self, $class;
}

sub follow{
	my ($self, $str)=@_;
	unshift @{ $self->{friends} }, $str->{name};
}

sub tweet{
	my ($self, $str)=@_;
	my $box={
		name => $self->{name},
		message_body => $str,
		};
	unshift @all_tweet, $box;
	if (@all_tweet > 20) {pop @all_tweet};
}

sub friends_timeline{
	my ($self) = @_;
	foreach my $my_friend(@{$self->{friends}}){
#		print "\n$my_friend\n";
		for(my $iter = 0; $iter < @all_tweet; $iter++){
			my $friend_name=$all_tweet[$iter]->{name};
			if ($my_friend eq $friend_name){
				print "$friend_name : $all_tweet[$iter]->{message_body}\n";
			};
		}
	}
}

sub all_tweets{
	for($iter = 0; $iter < @all_tweet; $iter++){
		if($all_tweet[$iter]->{name} eq "onishi"){
			print "$all_tweet[$iter]->{name} : $all_tweet[$iter]->{message_body}\n";
		}
	}
}

sub get_value{
	my ($self,$str)=@_;
	return $self->{$str};
}

#sub message{
#	my ($self) = @_;
#	print "$self->{name} : $self->{tweet}->[0]\n"
#}

#sub message_friends{
#	my ($self) = @_;
#	for ($friends=0;$friends<@{$self->{friends}};$friends++){
#		my $friend_name = $self->{friends}->[$friends];
#		print "$self->{name}‚Ì—F’B ",$friends+1,"l–Ú : $self->{friends}->[$friends]\n";
#	}
#}

# ˆÈ‰ºtest
package titter;

use strict;
use warnings;

	my $b1 = Bird->new( name => "kimikimi714" );
	my $b2 = Bird->new( name => "jkondo" );
	my $b3 = Bird->new( name => "reikon" );
	my $b4 = Bird->new( name => "onishi");
	
	$b1->tweet("‚ß‚Á‚¿‚á‚Þ‚¸‚©‚µ‚¢‚â‚ñI");
	$b3->tweet("‚µ‚È‚à‚ñ‚Æ‚¨ŽU•à’†‚Å‚·");
	$b4->tweet("‰GŠÛŒä’r‚È‚¤I");
	$b2->tweet("‚«‚å‚¤‚Í‚ ‚Â‚¢‚Å‚·‚ËI");
	
	$b1->follow($b2);
#	print $b1->{friends}->[0],"\n";
	$b1->follow($b3);
	$b1->follow($b4);
#	print $b1->{friends}->[0],"\n";
#	print $b1->{friends}->[1],"\n";
#	Bird->all_tweets;

#	$b1->message_friends;
	$b1->friends_timeline;
1;