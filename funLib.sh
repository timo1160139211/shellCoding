#! /bin/bash
#  funLib.sh : library of functions

function sum {
    echo "I am funLib.sh , and current \$0 file is $0"
    local sum=0

    for s in $*
    do
	sum=$[ $sum + $s] 
    done

    echo $sum
}


