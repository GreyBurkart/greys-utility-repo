#/!/bin/bash

# mdcv: Reset script
# version 0.1
# 2011 Grey Burkart

# Resets directory to pre-setup conditions except for archival directory (this is otherwise the 'nuclear options')
# CAREFUL: Run this in the mdcv directory only. Not my fault if this goes rampant, you have been warned.

# Get rid of directories except mdcvArchive
rm -r mdcvDistribute
rm -r mdcvSections

# Get rid of discrete compiled files
# rm mdcv.tex
rm mdcv.pdf
rm mdcv.md

# And we're done.
echo "All done here! Set your name in the build file now."
exit