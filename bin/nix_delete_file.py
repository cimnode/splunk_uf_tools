import os, sys

if len(sys.argv) != 3 :
  print( "Parameters not correct. 1. File to confirm, 2. File to delete" )
  sys.exit()

file_to_confirm = sys.argv[1]
file_to_delete = sys.argv[2]

print( "File to confirm: " + file_to_confirm )
print( "File to delete: " + file_to_delete )

if os.path.isfile( file_to_confirm ) :
  if os.path.isfile( file_to_delete ) :
    os.remove( file_to_delete )
    if os.path.isfile( file_to_delete ) :
      print( "Error. File not removed." )
    else:
      print( "File deleted." )
  else:
    print( "File to delete not found." )
else:
  print( "File to confirm not found." )
