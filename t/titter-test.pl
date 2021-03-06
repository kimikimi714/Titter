package Bird;

sub new{
    my ( $class, %args ) = @_;
    my $self = { %args };
    return bless $self, $class;
}

sub get_name{
	my ($self)=@_;
	return $self->{name};
}

sub message{
	my ($class,$name,$timeline)=@_;
	print "$name : $timeline\n";
}

sub message2{
	my ($class,$tweet)=@_;
	print "@{$tweet}->[0] : @{$tweet}->[1]\n";
}

sub tweet{
	
}
# 以下main
package main;

my $obj = Bird->new( name => "kimikimi714");
print $obj->get_name,"\n";

my $b1_timeline_name=["onishi","reikon"];
my $b1_timeline=["烏丸御池なう！","しなもんのお散歩中です"];

Bird->message($b1_timeline_name->[0],$b1_timeline->[0]);

my $onishi_tweet=["onishi","烏丸御池なう！"];
Bird->message2($onishi_tweet);

my $reikon = Bird->new( name =>"reikon");
my $reikon_tweet = [$reikon->get_name,"しなもんのお散歩中です"];
Bird->message2($reikon_tweet);

