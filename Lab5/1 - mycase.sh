#!/bin/bash
while :
do
  echo -n "Enter only one letter: "; read str
  if [[ "$str" =~ [a-z] ]]; then
    echo "You entered a lowercase letter."
  elif [[ "$str" =~ [A-Z] ]]; then
    echo "You entered an uppercase letter."
  elif [[ "$str" =~ [0-9] ]]; then
    echo "You entered a digit."
  else
    echo "What's that?"
  fi

done