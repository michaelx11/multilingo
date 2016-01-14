my $output = `cat input/input_spoonerism.txt | scala src/spoonerism.scala`;
my $expected = `cat expected/expected_spoonerism.txt`;

if ($output eq $expected) {
  print "Spoonerism test passed!\n";
} else {
  printf("Got:\n\n%s\nExpected:\n\n%s", $output, $expected);
}
