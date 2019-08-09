echo "Guess the number of files in the current directory"
read response

function guessinggame {
	while [[ $response -ne $answer ]]
	do
		if [[ $response -gt $answer ]]
		then
			echo "That number is too high! Please try again."
			read response
		elif [[ $response -lt $answer ]]
		then
			echo "That number is too low! Please try again."
			read response
		fi
	done
	if [[ $response -eq $answer ]]
	then
		echo "$1 is correct! Well done!"
		echo "Thank you for playing."
	fi
}

$answer = $(ls | wc - 1)
guessinggame response answer

