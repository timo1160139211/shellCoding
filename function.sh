#! /bin/bash
#  function

######################################
#         function define            #
######################################

#第一次声明
function hello {
    echo "Hello World 1"
}

#覆盖第一次声明
function hello {
    echo "Hello World 2"
}

function sayHello {
    echo "Hello,$1."
}

sayHi() {
    echo "Hi,$1."
}

#-------   syntax err -------  
#  println(var) {
#      echo $var
#  }
#----------------------------

function return259 {
    echo -n "I am return259 : "
    return 259
}

function returnStr {
    echo "\"I am returnStr.\""
    read -p "\"Could I know your name ？ \" type name :" name
    echo "\"Hi,${name}.\""
}	


######################################
#            Start Main              #
######################################

#hello

#sayHello Tom

#sayHi Jerry

#echo " "
return259
echo "my exit state is $?"

echo " "
returnStr

echo " "
result=`returnStr`
echo -e "函数的返回值：\n$result"

