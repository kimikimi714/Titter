# implement this
package Bird;

sub new{
    my ( $class, %args ) = @_;
    my $self = { %args };
    return bless $self, $class;
}

sub get_name{
	my ($self)=@_; # ����()�����ƃe�X�g���ʂ�Ȃ��Ȃ�̂�������Ȃ��B
	return $self->{name};
}

sub iterator{
	my $class=shift;
	my $self={};
	return $self, $class;
}
# my $iter=1;
sub has_next{
	if ($iter < $i){
		$iter++;
		return 1;
	}
	}
	
sub next_value{
	return $hash{$iter-1};
}

1; # DO NOT FORGET THIS!!
