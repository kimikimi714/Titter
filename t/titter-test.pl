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
# ˆÈ‰ºmain
package main;

my $obj = Bird->new( name => "kimikimi714");
print $obj->get_name,"\n";

my $b1_timeline_name=["onishi","reikon"];
my $b1_timeline=["‰GŠÛŒä’r‚È‚¤I","‚µ‚È‚à‚ñ‚Ì‚¨ŽU•à’†‚Å‚·"];

Bird->message($b1_timeline_name->[0],$b1_timeline->[0]);

my $onishi_tweet=["onishi","‰GŠÛŒä’r‚È‚¤I"];
Bird->message2($onishi_tweet);

my $reikon = Bird->new( name =>"reikon");
my $reikon_tweet = [$reikon->get_name,"‚µ‚È‚à‚ñ‚Ì‚¨ŽU•à’†‚Å‚·"];
Bird->message2($reikon_tweet);

