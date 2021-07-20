README.md:
	echo "guessinggame" > README.txt
	date >> README.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.txt
