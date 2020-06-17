README.md : 
	touch README.md
	echo "THE UNIX WORK BENCH ASSIGNMENT BY ADITYA" >  README.md
	echo "DATE AND TIME OF EXECUTION OF MAKEFILE : `date`" >> README.md
	echo "THE CODE CONTAINS THE FOLLOWING NUMBER OF LINES : " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
