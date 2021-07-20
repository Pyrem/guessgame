#!/usr/bin/env/ bash
#!guessinggame

num_of_files=$( ls | wc -l )

num=$num_of_files

echo "How many files are in the current directory?"

function check_guess {
local guess=$(( $1-1 ))
while [[ $guess != $1 ]]
do
	read -p "Enter a number guess: " guess
		if [[ $guess -lt $1 ]]
		then
			echo "Guess was low."
		elif [[ $guess -gt $1 ]]
		then
			echo "Guess was high."
		fi
done

}

check_guess $num

echo "You guessed correctly! Well done."
