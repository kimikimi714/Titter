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
# �ȉ�main
package main;

my $obj = Bird->new( name => "kimikimi714");
print $obj->get_name,"\n";

my $b1_timeline_name=["onishi","reikon"];
my $b1_timeline=["�G�ی�r�Ȃ��I","���Ȃ���̂��U�����ł�"];

Bird->message($b1_timeline_name->[0],$b1_timeline->[0]);

my $onishi_tweet=["onishi","�G�ی�r�Ȃ��I"];
Bird->message2($onishi_tweet);

my $reikon = Bird->new( name =>"reikon");
my $reikon_tweet = [$reikon->get_name,"���Ȃ���̂��U�����ł�"];
Bird->message2($reikon_tweet);

