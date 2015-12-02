require 'securerandom'

numBytes = 16

if ARGV.length > 0
  numBytes = ARGV[0].to_i
end

random_strings = Array.new
# Generate Ruby's random string
random_strings.push(SecureRandom.hex(numBytes).upcase)

# Generate Perl
random_strings.push(`perl rand.pl #{ numBytes }`)

# Generate Python
random_strings.push(`python rand.py #{ numBytes }`)

# Generate Php
random_strings.push(`php rand.php #{ numBytes }`)

# Ghetto zero
final = random_strings[0].hex ^ random_strings[0].hex
random_strings.each do |str|
  final ^= str.hex
end

puts final.to_s(16).rjust(2 * numBytes).upcase
