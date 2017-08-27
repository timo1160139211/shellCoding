#! /bin/bash


echo "########## auto install 'pinyin' script ##########"
echo "#                                                #"
echo "#    1 google-pinyin                             #"
echo "#    2 ibus-pinyin                               #"
echo "#    3 wubi                                      #"
echo "#    4 sougou-pinyin                             #"
echo "#                                                #"
echo "##################################################"

#select
echo "please input a number:"
read num
echo "you select $num"


#install
case $num in
	"1") echo "starting install google pinyin"
	     apt-get install fcitx &> /dev/tty
	     apt-get install fcitx-googlepinyin &> /dev/tty
	     ;;

	"2") echo "starting install ibus-pinyin"
	     apt-get install ibus &> /dev/tty
	     apt-get install ibus-pinyin &> /dev/tty
	     ;;

	"3") echo "starting install wubi-pinyin"
	     apt-get install fcitx &> /dev/tty
	     apt-get install fcitx-google-pinyin &> /dev/tty
             ;;

        "4") echo "starting install sougou-pinyin"
	     apt-get install fcitx &> /dev/tty
	     apt-get install fcitx-google-pinyin &> /dev/tty
             ;;

        *) echo "$num is not in list ,please try again"
             ;;

esac

# reboot
echo "reboot now ? y / n"
read flag
case $flag in
	[Yy]) reboot
		;;
        
	*) 
		;;
esac





#apt-get install fcitx &> /dev/tty
#apt-get install fcitx-googlepinyin &> /dev/tty

