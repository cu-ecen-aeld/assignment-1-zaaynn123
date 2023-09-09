#! /bin/bash

filesdir=$1
searchstr=$2
if [ -d $filesdir ]
then

    if [ ! -z "$searchstr" ]
    then
         cd $filesdir 
         
         X=$(find -type f | wc -l )
         Y=$(grep -r $filesdir -e $searchstr | wc -l)
         
         echo "The number of files are "$X" and the number of matching lines are" $Y
    else
      echo "no second argument found"
      exit 1
      
     fi
else 
     echo "no directory found"
     exit 1
     
fi
