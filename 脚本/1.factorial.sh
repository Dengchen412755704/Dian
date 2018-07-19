#!/bin/bash
#用递归方法计算n！
y=1                                     #定义全局变量y=1
function fac() 
{ 
    #echo "${1}"
    local num=${1}                      #将输入参数赋给局部变量num
    local num_1=$(($num-1))             #将num-1赋给num_1
	if [ $num_1 -lt 1 ]                 #判断num_1是否小于等于1
	then                              
			y=1                         #0和1的阶乘为1
	else
			fac $num_1                  #用递归调用fac函数
			y=$(( num * $y))            #累积相乘
	fi
	return $y                           #返回计算结果
}   
if [ ! -n "$1" ]
then 
	echo -e "usage:1.factorial.sh [n]"      #提醒用户使用方法
	echo "calculate a number's factorial"   #表明该脚本的功能
else 
	fac ${1}                               #将输入参数传给函数fac
    echo "${1}"!的值为:$y                  #输出n！的结果
fi
