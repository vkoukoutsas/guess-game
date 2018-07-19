#!/usr/bin/env bash
# Coursera Assignment for "Unix Workbench"
# John Hopkins University

echo "Guess the number of files in this directory (hidden files excluded)"

function readguess {
read guess
}

readguess

filenum=$(ls -l | wc -l)
# Decrease filenum by one since wc -l counts also the file line in ls.
filenum=$((filenum - 1))

while [[ $guess -ne $filenum  ]]
do
    if [[ $guess -lt $filenum ]]
    then
      echo "Too low, try higher."
    elif [[ $guess -gt $filenum ]]
    then
      echo "Too high, try lower."
    else
      echo ""
    fi
  readguess
done
echo "You finally made the correct guess :)"
echo "The number of file in the directory is indeed $guess "
