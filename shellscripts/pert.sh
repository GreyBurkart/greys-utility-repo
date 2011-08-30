#/!/bin/bash

echo "Optimistic estimate: "
read TOPT
echo "Likely estimate: "
read TLIKE
echo "Pessimistic estimate: "
read TPESS
echo " "
echo "PERT Estimation for Critical Path is: "
echo $[($TOPT + (4 * $TLIKE) + $TPESS) / 6]

