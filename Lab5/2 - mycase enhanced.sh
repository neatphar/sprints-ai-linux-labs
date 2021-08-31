#!/bin/bash
while :
do
  echo -n "Enter only one word: "; read str
  if [[ "$str" =~ ^[a-z]*$ ]]; then
    echo "You entered an all lowercase word."
  elif [[ "$str" =~ ^[A-Z]*$ ]]; then
    echo "You entered an all uppercase word."
  elif [[ "$str" =~ ^[0-9]*$ ]]; then
    echo "You entered a digit."
  elif [[ "$str" =~ ^[a-zA-Z]*$ ]]; then
    echo "You entered a mixture of letters."
  elif [[ "$str" =~ ^[a-zA-Z0-9]*$ ]]; then
    echo "You entered a mixture of letters AND numbers."
  else
    echo "What's that?"
  fi

done