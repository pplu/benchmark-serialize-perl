package Data::Serializer::JSON::XS;
BEGIN { @Data::Serializer::JSON::XS::ISA = qw(Data::Serializer) }

use warnings;
use strict;
use JSON::XS;
use vars qw($VERSION @ISA);

$VERSION = '0.01';

sub serialize {
	return JSON::XS::encode_json($_[1]);
}

sub deserialize {
	return JSON::XS::decode_json($_[1]);
}

1;

