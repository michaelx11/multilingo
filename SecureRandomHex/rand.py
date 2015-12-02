import os, sys

numBytes = 16
if len(sys.argv) > 1:
  numBytes = int(sys.argv[1])

print ''.join(map(lambda x: '%02x' % ord(x), os.urandom(numBytes))).upper()
