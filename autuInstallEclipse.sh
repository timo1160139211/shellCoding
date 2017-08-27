#! /bin/bash


echo "####################################"
echo "#   1 amd64                        #"
echo "#   2 i86                          #"
echo "#                                  #"
echo "####################################"

echo "please input a number"
read num

case $num in 
	"1") echo "**********  downloading  **********"
	     weget http://mirrors.neusoft.edu.cn/eclipse/oomph/epp/oxygen/R/eclipse-inst-linux64.tar.gz 2> /dev/tty
             tar -zxvf eclipse* 2> /dev/tty
	     ./eclipse-inst 2> /dev/tty
             ;;
esac




