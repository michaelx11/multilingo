<?php
$numBytes = 16;

function getRandomHex($num_bytes) {
  return bin2hex(openssl_random_pseudo_bytes($num_bytes));
}

if (isset($argv[1])) {
  $numBytes = $argv[1];
}

print(strtoupper(getRandomHex($numBytes)));
?>
