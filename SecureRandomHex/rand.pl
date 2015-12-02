use strict; use warnings;

my $numBytes = 16;

if (scalar @ARGV > 0) {
  $numBytes = $ARGV[0]
}
for (1 .. $numBytes) {
  printf "%02X", rand(0xff);
}

printf "\n"
