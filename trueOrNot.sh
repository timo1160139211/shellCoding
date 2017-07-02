#! /bin/bash
# 0 1 true or not example :

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




