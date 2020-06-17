files=$(ls -l | grep -v ^l | wc -l )
let files=$files-1
flag=0
guess=0
difference=0
clear
echo "---------------GAME TO GUESS THE NUMBER OF FILES IN THE DIRECTORY-----------"
function diff_check {

	let difference=$guess-$files
}
while [[ $flag -eq 0  ]]
do
	echo "How many files are there in directory?"
	read guess
	diff_check
	regx="^[0-9]+$"
	if [[ $guess =~ $regx ]]
	then
		if [[ difference -eq 0 ]]
		then
			echo "You guessed it right , you win!!"
			flag=1
		elif [[ difference -lt 0 ]]
		then
			echo "Your is too low try a higher value"
		else
			echo "Your guess is too high try a lower value"
		fi
	else
		echo "Invalid input "
	fi
done
