package Bird;

our @all_tweet=();

sub new{
    my ( $class, %args ) = @_;
    my $self = { %args, friends=>[] };
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

1; # DO NOT DELETE THIS!!
