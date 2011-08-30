#/!/bin/bash

# Current version:
# HKDFlow-init v0.2

# Start a HKDFlow scaffold and git repo in this directory

# Make subdirectory scaffolds
## Get and set project directory = project name
n=$(basename $(pwd))

## Set subdirectory names
# a="Archive"
b="Distribute"
c="Documentation"
d="Library"
e="Snippets"
f="Tests"

## Make subdirectories
mkdir -p {"$n$b","$n$c","$n$d","$n$e","$n$f"}

# Start git source control
## Start with master branch and git furniture
git init

## Create a README detailing structure to follow
touch README
	echo "initial commit: tabula rasa" >> README
	echo " " >> README
	echo "gflow Repository Structure:" >> README
	echo " " >> README
	echo "  Master: master" >> README
	echo "    Release Candidate: rc/" >> README
	echo "  Draft: draft" >> README
	echo "    Topic: t/..." >> README
	echo "    Experimental tangent: x/..." >> README
echo "README file created"

# OS X items to ignore
touch .gitignore
	echo ".DS_Store" >> .gitignore
	echo "Icon?" >> .gitignore
	echo ".Spotlight-V100" >> .gitignore
	echo ".Trashes" >> .gitignore

## First commit, go!
git add README
git add .gitignore
git commit -F README

# Switch to draft branch and get ready to work.
git checkout -b draft
echo "Ready to rock."

# Exit properly.
exit 0