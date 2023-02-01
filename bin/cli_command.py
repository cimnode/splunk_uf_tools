import os, sys

if len(sys.argv) != 2 :
  print( "No command to execute passed." )
  sys.exit()

command_to_run = sys.argv[1]
print( "Command: " + command_to_run )
os.system( command_to_run )

