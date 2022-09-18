#!/bin/bash

if [ $# -eq 0 ]
	then echo "Empty argument"
elif [ $1 == "pi1" ] || [ $1 == "PI1" ]
	then cp ../src/pub1.cpp ../src/pub.cpp && echo "Changed into PI1 File"
elif [ $1 == "pi2" ] || [ $1 == "PI2" ]
	then cp ../src/pub2.cpp ../src/pub.cpp && echo "Changed into PI2 File"
else
	echo "Wrong Usage : ./changefile.sh [PI1(pi1) or PI2(pi2)]"
fi
