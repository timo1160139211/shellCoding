#! /bin/bash
# loop - for

######## syntax :#########
# for [var] in [list]    #
# do                     #
#     command0           #
#     command1           #
#     ...                #
# done                   #
##########################



##########################
#      MAIN              #
##########################

# ls $HOME
for FILE in $HOME/*
do 
	echo $FILE
done

# int list
for var in 1 2 3 4 5 6 7 8
do
	echo "this is the No.$var line"
done	
