#! /bin/bash
# an example script of if

clear
echo -n "Please input a file or directory name:"
read pathName

if [ -d $pathName ]
then
	echo "$pathName is a directory ."
elif [ -f $pathName ]
then
	echo "$pathName is a regular file ."

else
	echo "cannot find the $pathName ."

fi
	






