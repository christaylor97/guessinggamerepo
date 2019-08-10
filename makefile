README.md:
	touch README.md
	echo "Unix Workbench Project: Guessing Game" >> README.md
	echo "Date at which make was run:" >> README.md
	date >> README.md
	echo "Number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md	
