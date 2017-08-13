#! /bin/bash/
#  Shell Special-Variable

##############################
##                          ##
##  $0 $n $# $* $@ $? $$    ##
##                          ##
##############################

# $0 当前shell脚本文件名
echo "script name is $0"

# $n (n>0) 传递给shell脚本或者函数的参数的值
echo "first paramter is $1"
echo "second paramter is $2"

#  $# 统计参数个数
echo "total number of paramters is $#"

#  $* 以一个整体形式 列出所有参数 "$1 $2"
echo "quoted values : $*"

#  $@ 以单个形式 一一列出所有参数 "$1" "$2"
echo "quoted values : $@"

#  $? 返回上一个命令/函数执行的状态返回码
echo "last return state value is $?"

#  $$ 本身pid
echo "pid is $$"

#  $! 最后运行的后台pid
echo "background pid is $!"

#  $- 列出 Set 命令设定的Flag
echo "Flag : $-"


########### The diffence between $* and $@. ##################
#
#  $* 是一个列表，内容分别是 $1 $2 $3
#  $* 环绕双引号的时候 "$*" 是一个整体 "$1 $2 $3" 

#  $@ 是一个列表，内容分别是 $1 $2 $3
#  $@ 环绕双引号的时候 "$@" 是一个列表 "$1" "$2" "$3"
#
##############################################################

########  Test $* $@ "$*" "$@"
#

##
echo " "
echo "----------------Test \$* and \$@ --------------"
echo "  \$*=" $*
echo "\"\$*\"=" "$*"

echo " "
echo "  \$@=" $@
echo "\"\$@\"=" "$@"

echo " "
echo "print each paramter from \$*"
for var in $*
do
	echo "$var"
done

echo " "
echo "print each paramter from \$@"
for var in $@
do
	echo "$var"
done

echo " "
echo "print each paramter from \"\$*\""
for var in "$*"
do
	echo "$var"
done

echo " "
echo "print each paramter from \"\$@\""
for var in "$@"
do
	echo "$var"
done






