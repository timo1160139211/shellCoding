#! /bin/bash
# a express test script example:
#
# 总结归纳：
#     	1.expr 需要加空格（在算数运算符两侧）,let 不需要
#     	2."" 和 '' 做 括号()用
#     	3.单独的 * < > & | 字符的，需要环绕 "" ''或者加转意字符 \
#	4.
#       5.learn how to get the return value from expr : use ` `.



#--------- expr ----------#
# 不加空格时，认为 3+5 是一个字符串，返回值是一个字符串 3+5
expr 3+5

# 使用空格分离时，能进行预期的计算
expr 3 + 6

expr 1 + 2 + 3 + 4

# 嵌套 expr 的用法
expr 'expr 3 + 6' / 3 
# 认为 '' 的计算结果不是一个整数参数，why？

expr 'expr 1 + "expr 5 \* 7"' + 4
# 计算结果不是一个整数参数，why？ 可能expr 的计算结果返回值是一个字符串

# 计算 2*(7+8) 可以这样用
s='expr 7 +8'
expr ${s}\*i2
#语法错误！ ？

#---------- let ----------#
# 语法 let arg0[arg1..]  不要有空格.
let s=(2 +3)*4
echo $s

# let 与 < ,>
s1=3
s2=5
let s0=${s1}\>${s2}
echo $s0
# 0

let s0=${s1}\<${s2}
echo $s0
# 1

let s0=${s1}>=${s2}
echo $s0
# 3 多了一个=5 文件？ 输出重定向？

let s0=${s1}<=${s2}
echo $s0
# 3 

echo $(((2 +3)*4))
#20

#learn how to get the return value from expr:
s=`expr 5 + 7`
echo $s


