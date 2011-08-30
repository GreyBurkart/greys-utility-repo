#/!/bin/bash

# mdcv: Setup script
# version 0.1
# 2011 Grey Burkart

# It's up to you to make sure you have the necessary dependencies installed:
# These bash scripts use the following: pandoc / markdown2html, rsync, cat,
# touch, echo, mkdir, cd, rm, open (listed as bookkeeping for myself as a n00b).

# Make directories
mkdir mdcvArchive mdcvDistribute mdcvSections

# Generate template files
cd mdcvSections
	touch mdcv-title.mmd mdcv-contact.md mdcv-experience.md mdcv-skills.md mdcv-education.md mdcv-append.md
cd ..

# Populate template files
cd mdcvSections
	echo "Title: Curriculum Vitae " >> mdcv-title.mmd
		echo "Author: " >> mdcv-title.mmd
		echo "Version: " >> mdcv-title.mmd
			echo " " >> mdcv-title.mmd
	echo "# Contact Information " >> mdcv-contact.md
		echo " " >> mdcv-contact.md
	echo "# Experience " >> mdcv-experience.md
		echo " " >> mdcv-experience.md
	echo "# Skills " >> mdcv-skills.md
		echo " " >> mdcv-skills.md
	echo "# Education " >> mdcv-education.md
		echo " " >> mdcv-education.md
	echo "# Additional Information " >> mdcv-append.md
		echo " " >> mdcv-append.md
cd ..


# And we're done.
echo "All done here! Set your name in the build file now."
open mdcv-build.sh
exit