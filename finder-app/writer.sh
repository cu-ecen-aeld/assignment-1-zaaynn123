#!/bin/bash

writefile=$1
writestr=$2

current=$(pwd)

if [ ! -z "$writefile" ] && [ ! -z "$writestr" ]
then 
      
      echo "Going in"
      cd # 
      mkdir -p $(dirname $writefile) && touch $writefile
      echo "$writestr" > $writefile
      echo "Done"
      
else   
       echo "Input are not defined"
       exit 1
       
fi

cd $current

     


