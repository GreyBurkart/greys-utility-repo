#/!/bin/bash

# Current version:
# praxis-init v0.1

# Start a Praxis Project scaffold and initialize a git repo in this directory

# Make subdirectory scaffolds
## Get and set project directory = project name
n=$(basename $(pwd))

## Set subdirectory names
a="Draft"
b="Distribute"
c="Milestones"
d="Library"

## Make subdirectories
mkdir -p {"$n$a","$n$b","$n$c","$n$d"}

# Start git source control
## Start with master branch and git furniture
git init

# Get docs started
touch README.txt
	echo $n >> README.txt
	echo "{subtitle}" >> README.txt
	echo "==========" >> README.txt
	echo "*init `date "+%Y-%m-%d"`*" >> README.txt
	echo " " >> README.txt
	echo "SU: Project Concept [`date "+%Y-%m-%d"`]" >> README.txt
	echo "IP: Project Milestones []" >> README.txt
	echo "CS-1:  []" >> README.txt
	echo "CS-2:  []" >> README.txt
	echo "CS-3:  []" >> README.txt
	echo "CP: Package up repo []" >> README.txt
echo "README file created"

# OS X items to ignore
touch .gitignore
	echo ".DS_Store" >> .gitignore
	echo "Icon?" >> .gitignore
	echo ".Spotlight-V100" >> .gitignore
	echo ".Trashes" >> .gitignore

## First commit, go!
git add README.txt
git add .gitignore
git commit -am "SU: Project Init"

# Get ready to work.
echo "Ready to rock."

exit 0