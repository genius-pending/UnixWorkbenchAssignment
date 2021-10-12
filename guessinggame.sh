#!/usr/bin/env bash 
# File: guessinggame.sh
# Peer graded assignment for Coursera The Unix Workbench
 
function guessinggame {
  while [[ $guess -ne $files ]]
  do 
    if [[ $guess -lt $files ]]
    then
      echo "Your guess is too low. Please guess again:"
      read guess
    elif [[ $guess -gt files ]]
    then
      echo "Your guess is too high. Please guess again:"
      read guess
    fi
  done
  echo "Congratulations! Your answer is correct!"
}

echo "Plese enter how many files are in the current directory:"
read guess
files=$(ls | wc -l)
guessinggame guess files