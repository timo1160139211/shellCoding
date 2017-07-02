#! /bin/bash
# operational character example :

function say_hello(){
	echo -n "Please Enter Your Name :";read name
	echo "$name: hello world! "
}

a=10
b=15
let c=a+b
let d=189/15
let s=13%3

echo "$c"
echo "$d"
echo "${s}"
echo "The Programme Start Here ..."
say_hello
echo "The Programme Ends ."


