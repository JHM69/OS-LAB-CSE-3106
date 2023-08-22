# Example_5 - Write a shell script that displays “man”,”bear”,”pig”,”dog”,”cat”,
# and “sheep” on the screen with each appearing on a separate line. Try to do 
# this in as few lines as possible.

#!/bin/bash

ANIMALS="man bear pig dog cat sheep"

for ANIMAL in $ANIMALS
  do
    echo $ANIMAL
  done
