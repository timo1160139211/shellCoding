#! /bin/bash
# a simple shell script example :
# a say hello function:


##########################
#       function         #
##########################

function say_hello(){
	echo -n "Please Enter Your Name :"
	read name
	echo "$name : hello world! "
}


###########################
#          main           #
###########################
echo "The Programme Start Here ..."
say_hello
echo "The Programme Ends ."
