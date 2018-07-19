all: README.md

README.md: guessinggame.sh
	echo "# Simple Guessing game for Unix Workbench course" > README.md
	echo "## Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	echo -n "\n**Creation Date:** " >> README.md
	date >> README.md
	echo -n "\n**Lines in guessinggame.sh:** " >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md
