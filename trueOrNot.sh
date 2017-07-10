#! /bin/bash
# 0 1 true or not example :
# 
#    The conclusion is :
#       1. each expression will return a value between 0 and 255.
#       2. the state value 0 means that the expression finished fluently.
#       3. others state values means expression exit with an exception.


# 测试 if 判断语句
if [ 1 ];then
	echo "1 says \" Hello world ! \" "
fi 

if [ 0 ];then
	echo "0 says \" Hello world ! \" "
fi 

# 测试 整数关系
i1=10
i2=15
i3=10

echo "10==10"
[ $i1 -eq $i3 ]
echo $?

echo "10==15"
[ $i1 -eq $i2 ]
echo $?



# test the exit status :
exitValue=66
echo "The exit status is : $exitValue "
exit $exitValue

