#/!/bin/bash

# mdcv: CV build script
# version 0.3
# 2011 Grey Burkart 

# Outline:
# 1: Archive current build if it exists [rsync]
# 2: Touch new build file into existence [touch]
# 3: Append individual files for CV areas in specified order into build file [cat >>]
#	3a. Insert revision date into mdcv-title.md
# 4: Run markdown2pdf and place PDF output into Distribute directory [pandoc: markdown2pdf]
# 5: Sign off with an exit confirmation [echo, exit]
# Not implemented: Also build cover letter [mmd2letter.pl or similar]
# Not implemented: Also build references list [pandoc: markdown2pdf]

# Step 0: What is your Name?
n="Urist McNameless"

# Step 1: Archive current file if it exists, delete current
rsync -vbR --suffix .`date +%s` mdcv.md mdcvArchive/mdcv.md
rm mdcv.md

# Step 2: Create new build file
touch mdcv.md

# Step 3: Append individual source files to mdcv.md
# Comment out and reorganize as needed
# Note that mdcv-title.mmd is multimarkdown
# cat mdcvSections/mdcv-title.md >> mdcv.mmd
cat mdcvSections/mdcv-contact.md >> mdcv.md
cat mdcvSections/mdcv-experience.md >> mdcv.md
cat mdcvSections/mdcv-skills.md >> mdcv.md
cat mdcvSections/mdcv-education.md >> mdcv.md
# cat mdcvSections/mdcv-append.md >> mdcv.md

# Step 4: Run markdown2pdf, place PDF output in Distribute
markdown2pdf mdcv.md
rsync -vbR --suffix .`date +%s` mdcv.pdf mdcvArchive/"$n"-CV.pdf

# Clean up (comment this out if you want to use the *.tex file, of course)
rm mdcv.tex

# Step 5: Preview and sign off
open mdcv.pdf
echo "All done here!"
exit