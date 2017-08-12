#! /bin/bash
#  while-loop

############syntax:#########
#  while [commandTrue]     #
#  do                      #
#     command0             #
#     command1             #
#     ...                  #
#  done                    #
############################

# count loop
COUNTER=0
while [ $COUNTER -lt 5 ]
do
    COUNTER=`expr $COUNTER + 1`
    echo "Next COUNTER is $COUNTER"
done

# read input
echo 'type <Ctrl-D> to terminate'
echo -n 'enter your favorite film:'
while read FILM
do
    echo "Yeah! $FILM is a great film."
done
