now=$(shell date '+%Y-%m-%d %H:%M:%S')
lines=$(shell wc -l ./guessinggame.sh | cut -d " " -f 7)

README.md:
	touch README.md
	echo "# Guessing game to count the number of files in current directory" > README.md
	echo "- Date and Time: " $(now) >> README.md
	echo "- Number of lines of code: " $(lines) >> README.md
	echo "- The git repository can be found [here](https://github.com/ktalit/TUW_assignment.git)" >> README.md
	echo "- the github page can be seen [here](https://ktalit.github.io/TUW_assignment/)" >> README.md

clean:
	rm README.md 
