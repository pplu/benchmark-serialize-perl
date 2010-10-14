package Data::Serializer::Data::MessagePack;

BEGIN { @Data::Serializer::Data::MessagePack::ISA = qw(Data::Serializer) }

use warnings;
use strict;
use Data::MessagePack;
use vars qw($VERSION @ISA);

$VERSION = '0.01';

sub serialize {
        return Data::MessagePack->pack($_[1]);
}

sub deserialize {
        return Data::MessagePack->unpack($_[1]);
}

1;

