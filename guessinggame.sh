echo "Guess the number of files in the current directory"

guessinggame()
{
	let answer=$(ls | wc -l)

	read response
	while [[ response -ne $answer ]]
	do
		if [[ response -gt $answer ]]
		then
			echo "That number is too high! Please try again."
			read response
		elif [[ response -lt $answer ]]
		then
			echo "That number is too low! Please try again."
			read response
		fi
	done

	if [[ response -eq $answer ]]
	then
		echo "$response is correct! Well done!"
		echo "Thank you for playing."
	fi
}
guessinggame


